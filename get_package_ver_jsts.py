#!/usr/bin/env python3
import os
import json
import argparse
import re

def find_package_versions(package_name, root_dir='.'):
    """
    Search all package.json files under root_dir and list the version requirements
    for the specified package.
    
    Args:
        package_name (str): The package name to search for
        root_dir (str): The root directory to start the search from
    
    Returns:
        set: A set of version requirements found
    """
    versions = set()  # 'set' is a built-in type, no import needed
    
    for root, dirs, files in os.walk(root_dir):
        if 'node_modules' in root:
            continue  # Skip node_modules directories
        
        if 'package.json' in files:
            file_path = os.path.join(root, 'package.json')
            try:
                with open(file_path, 'r', encoding='utf-8') as f:
                    data = json.load(f)
                
                # Check in dependencies
                if 'dependencies' in data and package_name in data['dependencies']:
                    versions.add(data['dependencies'][package_name])
                
                # Check in devDependencies
                if 'devDependencies' in data and package_name in data['devDependencies']:
                    versions.add(data['devDependencies'][package_name])
                    
                # Check in peerDependencies
                if 'peerDependencies' in data and package_name in data['peerDependencies']:
                    versions.add(data['peerDependencies'][package_name])
                    
                # Check in optionalDependencies
                if 'optionalDependencies' in data and package_name in data['optionalDependencies']:
                    versions.add(data['optionalDependencies'][package_name])
                    
            except (json.JSONDecodeError, UnicodeDecodeError, IOError) as e:
                print(f"Error reading {file_path}: {e}")
    
    return versions

def main():
    parser = argparse.ArgumentParser(description='Find package version requirements in package.json files')
    parser.add_argument('package_name', help='Package name to search for')
    parser.add_argument('--root', default='.', help='Root directory to start the search from (default: current directory)')
    
    args = parser.parse_args()
    
    versions = find_package_versions(args.package_name, args.root)
    
    if versions:
        print(f"Version requirements for {args.package_name}:")
        print('\n'.join(sorted(versions)))
    else:
        print(f"No version requirements found for {args.package_name}")

if __name__ == '__main__':
    main()