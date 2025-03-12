import os
import subprocess

# Define the filename containing repo links
repo_file = "multiversx.txt"

# Read all repo URLs from the file
with open(repo_file, "r") as f:
    repos = [line.strip() for line in f if line.strip()]

# Clone each repo one by one
for repo_url in repos:
    repo_name = repo_url.rstrip(".git").split("/")[-1]  # Extract repo name

    if os.path.exists(repo_name):
        print(f"🚀 Skipping {repo_name}, already cloned!")
        continue

    print(f"🔹 Cloning {repo_name}...")
    subprocess.run(["git", "clone", repo_url])
    
print("✅ All repos processed!")
