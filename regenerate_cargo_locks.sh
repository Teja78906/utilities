#!/bin/bash

# Find all directories containing Cargo.toml and regenerate Cargo.lock files

echo "Searching for Cargo.toml files in the repository..."

# Find directories with Cargo.toml files and update them
find . -type f -name "Cargo.toml" | while read -r cargo_toml; do
    project_dir=$(dirname "$cargo_toml")
    
    echo "Updating Cargo.lock in: $project_dir"
    
    # Navigate to the directory and regenerate the Cargo.lock
    (cd "$project_dir" && cargo update)

    if [ $? -eq 0 ]; then
        echo "Successfully updated Cargo.lock in: $project_dir"
    else
        echo "Failed to update Cargo.lock in: $project_dir" >&2
    fi
done

echo "Cargo.lock files regeneration complete."

