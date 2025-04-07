#!/bin/bash


# Find all directories named "wasm" and execute commands inside them
find . -name "wasm*" -type d | while read -r dir; do
    echo "Entering directory: $dir"
    cd "$dir" || exit 1  # Exit if changing directory fails
    mkdir -p ../output
    # Add WebAssembly target for Rust
    rustup target add wasm32-unknown-unknown

    # Build the project in release mode
    cargo build --target wasm32-unknown-unknown --release

    # Find and copy all .wasm files to ../output
    find ./target/wasm32-unknown-unknown/release -name "*.wasm" -exec cp {} ../output/ \;

    echo "Copied .wasm files to ../output"

    # Return to the previous directory
    cd - > /dev/null || exit 1
done

# rewind=$(pwd)
# # Find all directories named "wasm" and execute commands inside them
# find . -name "abi" -type d | while read -r dir; do
    
#     echo "Entering directory: $dir"
#     parent_dir=$(basename "$(dirname "$dir")")
#     cd "$dir" || exit 1  # Exit if changing directory fails
#     cd ..
#     mkdir -p output
#     cd abi
#     cargo run > ../output/$parent_dir.abi.json

#     # Return to the previous directory
#     cd $rewind > /dev/null || exit 1
# done


