#!/usr/bin/env python3
import os
import re
import subprocess
import json
import time
import argparse
from concurrent.futures import ThreadPoolExecutor
from tqdm import tqdm

# Configuration
DEFAULT_OUTPUT_DIR = "cloned_repos"
MAX_WORKERS = 5  # Number of parallel clone operations
MAX_FILENAME_LENGTH = 200  # Maximum allowed filename length

def clean_repo_url(url):
    """Clean up repository URL by removing quotes and whitespace."""
    return re.sub(r'["\']+', '', url.strip())

def extract_repo_info(repo_url):
    """Extract owner and repo name from GitHub URL."""
    match = re.search(r'github\.com[:/]([^/]+)/([^/\.]+)(?:\.git)?', repo_url)
    if match:
        return match.group(1), match.group(2)
    return None, None

def get_latest_tag(owner, repo):
    """Get the latest tag from a GitHub repository (release tag, tag, or branch)."""
    try:
        # First try git ls-remote to get tag refs
        cmd = ["git", "ls-remote", "--tags", f"https://github.com/{owner}/{repo}.git"]
        result = subprocess.run(cmd, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        
        # Extract tag names from the output
        # Each line is formatted as: "<commit-hash>\trefs/tags/<tag-name>"
        # We need to properly parse this to extract only the tag names
        tags = []
        for line in result.stdout.strip().split('\n'):
            if not line.strip():
                continue
                
            parts = line.split('\t')
            if len(parts) != 2:
                continue
                
            ref_path = parts[1]
            # Remove refs/tags/ prefix and ^{} suffix
            tag_match = re.match(r'refs/tags/([^^]+)(?:\^\{\})?$', ref_path)
            if tag_match:
                tags.append(tag_match.group(1))
        
        # Filter out names that don't look like version tags (v1.0.0, 1.0, etc.)
        version_tags = [tag for tag in tags if re.search(r'v?\d+(\.\d+)+', tag)]

        if version_tags:
            # Sort the tags using a simple version comparison
            # This is not a perfect semantic versioning sort, but it works for basic cases
            def version_sort_key(tag):
                # Extract numbers from the tag
                numbers = re.findall(r'\d+', tag)
                # Convert to integers and pad with zeros for proper sorting
                return [int(n) for n in numbers] + [0] * (10 - len(numbers))
                
            sorted_tags = sorted(version_tags, key=version_sort_key, reverse=True)
            return {'name': sorted_tags[0], 'type': 'tag'}
        
        # If no version tags were found, check for any tags
        if tags:
            return {'name': tags[-1], 'type': 'tag'}
            
        # If no tags at all, get the default branch
        cmd = ["git", "ls-remote", "--symref", f"https://github.com/{owner}/{repo}.git", "HEAD"]
        result = subprocess.run(cmd, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        
        # Extract the default branch name
        branch_match = re.search(r'ref: refs/heads/(\S+)\s+HEAD', result.stdout)
        if branch_match:
            return {'name': branch_match.group(1), 'type': 'branch'}
            
        return None
    except Exception as e:
        print(f"Error getting tags for {owner}/{repo}: {str(e)}")
        return None

def sanitize_filename(name):
    """Sanitize and shorten filename to avoid path length issues."""
    # Replace characters that are problematic in filenames
    name = re.sub(r'[\\/:*?"<>|]', '-', name)
    
    # Limit the length
    if len(name) > MAX_FILENAME_LENGTH:
        # Keep the start and end, but truncate the middle
        half_length = MAX_FILENAME_LENGTH // 2 - 3  # Save space for the ellipsis
        name = name[:half_length] + "..." + name[-half_length:]
    
    return name

def clone_repo(repo_url, output_dir, shallow=True, quiet=False, use_tag=True):
    """Clone a GitHub repository."""
    owner, repo = extract_repo_info(repo_url)
    if not owner or not repo:
        return {
            "url": repo_url,
            "status": "error",
            "message": "Invalid GitHub URL format"
        }
    
    # Get latest tag if use_tag is enabled
    tag_info = None
    if use_tag:
        try:
            tag_info = get_latest_tag(owner, repo)
        except Exception as e:
            # Log the error but continue with the default branch
            print(f"Error getting tag info for {owner}/{repo}: {str(e)}")
    
    # Create directory name with tag appended if available
    repo_dir_name = repo
    ref_type = None
    ref_name = None
    
    if tag_info:
        ref_type = tag_info['type']
        ref_name = tag_info['name']
        # Sanitize the tag name for use in a filename
        sanitized_ref_name = sanitize_filename(ref_name)
        repo_dir_name = f"{repo}-{sanitized_ref_name}"
    
    # Ensure the directory name is safe to use
    repo_dir_name = sanitize_filename(repo_dir_name)
    repo_dir = os.path.join(output_dir, sanitize_filename(owner), repo_dir_name)
    
    # Check if path is too long
    if len(repo_dir) > 250:  # Windows has a 260 character path limit, leave some margin
        # Use a shorter directory structure
        short_owner = sanitize_filename(owner)[:20]
        short_repo = sanitize_filename(repo)[:20]
        short_tag = ""
        if ref_name:
            short_tag = "-" + sanitize_filename(ref_name)[:20]
        repo_dir = os.path.join(output_dir, short_owner, f"{short_repo}{short_tag}")
    
    # Skip if already cloned
    if os.path.exists(repo_dir):
        return {
            "url": repo_url,
            "owner": owner,
            "repo": repo,
            "ref_type": ref_type,
            "ref_name": ref_name,
            "path": repo_dir,
            "status": "skipped",
            "message": "Repository already exists"
        }
    
    # Create parent directory
    try:
        os.makedirs(os.path.dirname(repo_dir), exist_ok=True)
    except OSError as e:
        return {
            "url": repo_url,
            "owner": owner,
            "repo": repo,
            "ref_type": ref_type,
            "ref_name": ref_name,
            "status": "error",
            "message": f"Failed to create directory: {str(e)}"
        }
    
    # Prepare git clone command
    cmd = ["git", "clone"]
    if shallow:
        cmd += ["--depth", "1"]  # Shallow clone for faster download
    if quiet:
        cmd += ["--quiet"]
    
    # Add reference if available
    if tag_info:
        cmd += ["--branch", ref_name]
    
    cmd.append(repo_url)
    cmd.append(repo_dir)
    
    try:
        subprocess.run(cmd, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        return {
            "url": repo_url,
            "owner": owner,
            "repo": repo,
            "ref_type": ref_type,
            "ref_name": ref_name,
            "path": repo_dir,
            "status": "success",
            "message": f"Repository cloned successfully{' with ' + ref_type + ' ' + ref_name if ref_name else ''}"
        }
    except subprocess.CalledProcessError as e:
        error_msg = e.stderr.decode('utf-8') if e.stderr else str(e)
        return {
            "url": repo_url,
            "owner": owner,
            "repo": repo,
            "ref_type": ref_type,
            "ref_name": ref_name,
            "path": repo_dir,
            "status": "error",
            "message": error_msg
        }

def main():
    parser = argparse.ArgumentParser(description='Clone multiple GitHub repositories')
    parser.add_argument('-i', '--input', type=str, default='multiversx.txt', 
                        help='Input file containing repository URLs (one per line)')
    parser.add_argument('-o', '--output', type=str, default=DEFAULT_OUTPUT_DIR, 
                        help='Output directory for cloned repositories')
    parser.add_argument('-f', '--full', action='store_true', 
                        help='Clone full repository history (default is shallow clone)')
    parser.add_argument('-v', '--verbose', action='store_true', 
                        help='Show git clone output')
    parser.add_argument('-w', '--workers', type=int, default=MAX_WORKERS, 
                        help=f'Number of parallel workers (default: {MAX_WORKERS})')
    parser.add_argument('-l', '--log', type=str, default='clone_results.json',
                        help='Log file to save results')
    parser.add_argument('-t', '--tags', action='store_true', default=True,
                        help='Use latest tag or branch for each repository')
    parser.add_argument('--no-tags', dest='tags', action='store_false',
                        help='Do not use tags, just clone the default branch')
    
    args = parser.parse_args()
    
    # Validate input file
    if not os.path.exists(args.input):
        print(f"Error: Input file '{args.input}' not found.")
        return 1
    
    # Create output directory
    os.makedirs(args.output, exist_ok=True)
    
    # Read repository URLs
    with open(args.input, 'r') as f:
        repo_urls = [clean_repo_url(line) for line in f if line.strip()]
    
    total_repos = len(repo_urls)
    print(f"Found {total_repos} repositories to clone")
    
    # Clone repositories in parallel
    results = []
    
    with ThreadPoolExecutor(max_workers=args.workers) as executor:
        # Create a list of futures for all clone operations
        futures = {
            executor.submit(
                clone_repo, 
                url, 
                args.output, 
                not args.full, 
                not args.verbose,
                args.tags
            ): url for url in repo_urls
        }
        
        # Process results as they complete with a progress bar
        with tqdm(total=len(repo_urls), desc="Cloning repositories") as pbar:
            for future in futures:
                try:
                    result = future.result()
                    results.append(result)
                    
                    # Update progress bar with status
                    status = result["status"]
                    repo = result.get("repo", "unknown")
                    ref_type = result.get("ref_type", "")
                    ref_name = result.get("ref_name", "")
                    ref_info = f" [{ref_type}:{ref_name}]" if ref_type and ref_name else ""
                    
                    if status == "success":
                        pbar.set_description(f"Cloned {repo}{ref_info}")
                    elif status == "skipped":
                        pbar.set_description(f"Skipped {repo}{ref_info}")
                    else:
                        pbar.set_description(f"Error with {repo}")
                except Exception as e:
                    # Handle unexpected exceptions
                    url = futures[future]
                    owner, repo = extract_repo_info(url) or ("unknown", "unknown")
                    error_result = {
                        "url": url,
                        "owner": owner,
                        "repo": repo,
                        "status": "error",
                        "message": f"Unexpected error: {str(e)}"
                    }
                    results.append(error_result)
                    pbar.set_description(f"Error with {repo}")
                
                pbar.update(1)
    
    # Save results to a log file
    log_path = os.path.join(args.output, args.log)
    with open(log_path, 'w') as f:
        json.dump(results, f, indent=2)
    
    # Print summary
    success_count = sum(1 for r in results if r["status"] == "success")
    skipped_count = sum(1 for r in results if r["status"] == "skipped")
    error_count = sum(1 for r in results if r["status"] == "error")
    
    print("\nCloning completed!")
    print(f"Results: {success_count} successful, {skipped_count} skipped, {error_count} failed")
    print(f"Log file saved to: {log_path}")
    
    # Create a simple report in markdown
    md_report = os.path.join(args.output, "repository_report.md")
    with open(md_report, 'w') as f:
        f.write("# GitHub Repositories Report\n\n")
        
        f.write("## All Repositories\n\n")
        f.write("| Repository | Reference | Type | Status | Message |\n")
        f.write("|------------|-----------|------|--------|--------|\n")
        for repo in sorted(results, key=lambda x: (x["status"] != "success", x.get("owner", ""), x.get("repo", ""))):
            owner = repo.get("owner", "Unknown")
            repo_name = repo.get("repo", "Unknown")
            ref_name = repo.get("ref_name", "None")
            ref_type = repo.get("ref_type", "None")
            status = repo["status"]
            message = repo.get("message", "")
            
            # Truncate long error messages
            if len(message) > 50:
                message = message[:50] + "..."
                
            f.write(f"| {owner}/{repo_name} | {ref_name} | {ref_type} | {status} | {message} |\n")
    
    print(f"Detailed report saved to: {md_report}")
    return 0

if __name__ == "__main__":
    exit(main())