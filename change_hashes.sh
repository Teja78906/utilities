#!/bin/bash

# Exit on errors
set -e

# File to store all matched hashes
output_file="../matched_hashes.txt"
> "$output_file"  # Clear the file before writing

# Python script for hash conversion
convert_hash() {
  local input_hash="$1"
  python3 - <<EOF
import bech32

try:
    bech32_string = "$input_hash"
    hrp, data = bech32.bech32_decode(bech32_string)
    
    if hrp is None or data is None:
        # Return the original input if invalid
        print("$input_hash")
        exit(0)

    bytes_list = bech32.convertbits(data, 5, 8, False)
    if bytes_list is None:
        print("$input_hash")
        exit(0)

    data = bech32.convertbits(bytes_list, 8, 5, True)
    if data is None:
        print("$input_hash")
        exit(0)

    hrp = "drt"
    bech32_string = bech32.bech32_encode(hrp, data)
    print(bech32_string)
except Exception:
    print("$input_hash")  # Return the original input in case of any errors
EOF
}

# Check if a file is valid for processing
is_valid_file() {
  local file="$1"
  [[ -f "$file" ]] && (file "$file" | grep -q "text" || [[ "$file" =~ \.(json|yml|pem|sh|gitignore)$ ]])
}

# Recursively process files
process_files() {
  local path="$1"
  for file in "$path"/*; do
    if [ -d "$file" ]; then
      process_files "$file"
    elif is_valid_file "$file"; then
      # Read content and process potential hashes
      content=$(<"$file")
      reconstructed_content=$(echo "$content" | tr '\n' ' ')
      
      echo "$reconstructed_content" | grep -oP '(erd1[a-zA-Z0-9]*[ "--]?)' | while read -r match; do
        hash=$(echo "$match" | sed 's/[ "--]$//')
        echo "$hash" >> "$output_file"  # Save matched hash
        converted_hash=$(convert_hash "$hash")
        sed -i "s/$hash/$converted_hash/g" "$file"
      done
      echo "Processed: $file"
    else
      echo "Skipped: $file (unsupported file type)"
    fi
  done
}

# Start processing
process_files "."

echo "Hash replacement completed successfully!"
echo "All matched hashes have been saved to $output_file."
