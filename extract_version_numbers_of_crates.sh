#!/bin/bash

# Ensure the crate name is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <crate-name>"
    exit 1
fi

CRATE_NAME=$1

# Find all Cargo.toml files and extract distinct version numbers
find . -name "Cargo.toml" -exec grep -A 2 -E "\[dependencies\.${CRATE_NAME}\]" {} + | \
grep -Eo 'version *= *"?=?[0-9]+\.[0-9]+\.[0-9]+"' | \
sed -E 's/.*"?=?([0-9]+\.[0-9]+\.[0-9]+)".*/\1/' | \
sort -V | uniq
