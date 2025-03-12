#!/bin/bash

#!/bin/bash

# Ensure the crate name is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <crate-name>"
    exit 1
fi

# Store the crate name from the command line argument
CRATE_NAME=$1

# Find all Cargo.toml files and extract distinct version numbers for the specified crate
awk -v crate="$CRATE_NAME" '
$0 == "[dependencies." crate "]" { found=1; next }
found && /version *= *"=?[0-9]+\.[0-9]+\.[0-9]+"/ {
    if (match($0, /"=?([0-9]+\.[0-9]+\.[0-9]+)"/, arr)) {
        print arr[1];
    }
    found=0;
}' $(find . -name "Cargo.toml") | sort -V | uniq

