#!/bin/bash

# Ensure the script stops on errors
set -e

# Array of substitutions: "search_pattern replacement"
substitutions=(
  "arwen andes"
  "Arwen Andes" 
  "ARWEN ANDES"
  "mandos denali"
  "Mandos Denali"
  "MANDOS DENALI"
)

# Function to determine if a file is readable and has the correct extension
is_valid_file() {
  local file="$1"
  [[ -f "$file" ]] && (file "$file" | grep -q "text" || [[ "$file" == *.json || "$file" == *.yml || "$file" == *.pem || "$file" == *.sh || "$file" == ".gitignore"  ]])
}

# Function to process files recursively, including hidden files and directories
process_files() {
  local path="$1"
  shopt -s dotglob  # Include hidden files and directories
  for file in "$path"/*; do
    if [ -d "$file" ]; then
      # If the file is a directory, recursively call this function
      process_files "$file"
    elif is_valid_file "$file"; then
      # If the file is valid, apply substitutions
      for sub in "${substitutions[@]}"; do
        search=$(echo "$sub" | awk '{print $1}')
        replace=$(echo "$sub" | awk '{print $2}')
        sed -i "s/$search/$replace/g" "$file"
      done
      echo "Processed: $file"
    else
      echo "Skipped: $file (not a valid file for processing)"
    fi
  done
  shopt -u dotglob  # Disable inclusion of hidden files
}

# Start processing from the current directory
process_files "."

echo "Naming changes completed successfully!"
