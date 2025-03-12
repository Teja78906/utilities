import os
import re

def extract_rs_paths(directory):
    # Regular expression to match paths like '/home/andreim/numbat*********.rs'
    pattern = re.compile(r'/home/andreim/numbat[a-zA-Z0-9_\-/.]*\.rs')

    extracted_paths = []

    # Walk through directory recursively
    for root, _, files in os.walk(directory):
        for file in files:
            if file.endswith('.wat'):
                file_path = os.path.join(root, file)
                with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                    content = f.read()
                    matches = pattern.findall(content)
                    extracted_paths.extend(matches)

    return extracted_paths

# Example usage
directory_path = "."  # Change this to your directory path
paths = extract_rs_paths(directory_path)

# Print results
for path in paths:
    print(path)
