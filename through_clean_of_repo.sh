#!/bin/bash

rewind=$(pwd)

# Find all directories named "wasm" and execute commands inside them
find . -name "target" -type d | while read -r dir; do
    echo "Entering directory: $dir"
    cd "$dir" || exit 1  # Exit if changing directory fails
    cd ..
    cargo clean

    # Return to the previous directory
    cd $rewind > /dev/null || exit 1
done

du -h