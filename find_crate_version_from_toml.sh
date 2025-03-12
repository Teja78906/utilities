#!/bin/bash

# Navigate to the root of your repository (modify if needed)
repo_root="/home/teja/documents/drtRepos/rs-sdks/repos/mx-sdk-rs-0.54.5"
cd "$repo_root" || exit 1

echo "crate-name      ::      version_it_is_published"

# Find all Cargo.toml files and process them
find . -name "Cargo.toml" | while read -r cargo_file; do
    # Read the [package] section only
    in_package_section=false
    crate_name=""
    crate_version=""
    publish_flag=""

    while IFS= read -r line; do
        # Check if we are entering the [package] section
        if [[ "$line" =~ ^\[package\] ]]; then
            in_package_section=true
            continue
        fi

        # Exit if another section starts
        if [[ "$line" =~ ^\[.*\] ]]; then
            in_package_section=false
        fi

        # Process only the [package] section
        if $in_package_section; then
            case "$line" in
                name\ *=\ *\"dharitri-*\")
                    crate_name=$(echo "$line" | awk -F ' = ' '{gsub(/"/, "", $2); print $2}')
                    ;;
                version\ *=\ *)
                    crate_version=$(echo "$line" | awk -F ' = ' '{gsub(/"/, "", $2); print $2}')
                    ;;
                publish\ *=\ *false*)
                    publish_flag="false"
                    ;;
            esac
        fi
    done < "$cargo_file"

    # If publish=false is not present, crate starts with dharitri-, and version is not 0.0.0, print the crate info
    if [[ -n "$crate_name" && -n "$crate_version" && "$publish_flag" != "false" && "$crate_version" != "0.0.0" ]]; then
        echo "$crate_name:::$crate_version"
    fi
done
