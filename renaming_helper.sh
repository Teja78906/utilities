#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 folder_to_change change_from change_to"
  exit 1
fi

# Get the arguments
start_dir="$1"
change_from="$2"
change_to="$3"

# Use find to list files and directories, and loop through them
find "$start_dir" -depth -name "*$change_from*" | while read -r file; do
  # Create the new name by replacing 'change_from' with 'change_to'
  new_name=$(echo "$file" | sed "s/$change_from/$change_to/I")

  # Rename the file or directory
  mv "$file" "$new_name"
done

echo "Renaming completed."

