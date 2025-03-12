#!/bin/bash

# Ensure the script stops on errors
set -e

# File to store all matched hashes
output_file="../matched_hashes.txt"
> "$output_file"  # Clear the file before writing



# Function to determine if a file is valid for processing
is_valid_file() {
  local file="$1"
  # Check for text files, .json, .yml, and .pem files
  [[ -f "$file" ]] && (file "$file" | grep -q "text" || [[ "$file" == *.json || "$file" == *.yml || "$file" == *.pem || "$file" == *.sh || "$file" == ".gitignore" ]])
}

# Function to process files recursively
process_files() {
  local path="$1"
  for file in "$path"/*; do
    if [ -d "$file" ]; then
      # If the file is a directory, recursively call this function
      process_files "$file"
    elif is_valid_file "$file"; then
      # Read the file content and reconstruct potential multi-line hashes
      content=$(<"$file")
      reconstructed_content=$(echo "$content" | tr '\n' ' ')
      
      # Extract all matches, including hashes that might span lines
      echo "$reconstructed_content" | grep -oP '(erd1[a-zA-Z0-9]*[ "--]?)' | while read -r match; do
        # Remove trailing characters to extract the raw hash
        hash=$(echo "$match" | sed 's/[ "--]$//')
        echo "$hash" >> "$output_file"  # Write the matched hash to the output file
        
      done
      echo "Processed: $file"
    else
      echo "Skipped: $file (not a valid text, JSON, YAML, or PEM file)"
    fi
  done
}

# Start processing from the current directory
process_files "."

echo "Hash replacement completed successfully!"
echo "All matched hashes have been saved to $output_file."

