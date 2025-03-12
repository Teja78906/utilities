#!/bin/bash
# update -p ahash --precise 0.8.4
# Find all directories containing Cargo.toml and execute the cargo update command
find . -type f -name "Cargo.toml" -printf '%h\n' | sort -u | while read -r dir; do
    echo "Updating ahash in $dir"
    (cd "$dir" && cargo update -p getrandom --precise 0.1.16)
done

echo "Update process completed!"

