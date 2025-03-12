#!/bin/bash

# Ensure the script stops on errors
set -e

# Function to determine if a file is valid for processing
is_valid_file() {
  local file="$1"
  [[ -f "$file" ]] && (file "$file" | grep -q "text" || [[ "$file" == *.json || "$file" == *.yml || "$file" == *.sh || "$file" == *.py || "$file" == *.toml ]])
}

# Function to process files recursively
process_files() {
  local path="$1"
  shopt -s dotglob  # Include hidden files and directories
  for file in "$path"/*; do
    if [ -d "$file" ]; then
      # Recursively process directories
      process_files "$file"
    elif is_valid_file "$file"; then
      # Replace multiline authors array with the desired value
      perl -0777 -i -pe 's/authors\s*=\s*\[[^\]]*\]/authors = \["contact\@dharitri.org"\]/sg' "$file"
      echo "Processed: $file"
    else
      echo "Skipped: $file (not a valid text or supported file type)"
    fi
  done
  shopt -u dotglob  # Disable inclusion of hidden files
}

# Start processing from the current directory
process_files "."

echo "Replacement of authors completed successfully!"

