#!/bin/bash

# Check that the destination directory has been provided as an argument
if [ -z "$1" ]
then
    echo "Usage: $0 <destination_directory>"
    exit 1
fi

# Store the destination directory in a variable
destination_directory=$1

# Create the destination directory if it doesn't exist
if [ ! -d "$destination_directory" ]
then
    mkdir -p "$destination_directory"
fi


# Find all files in the `template` directory (and its subdirectories) that do not contain "example" in their filenames, and copy them while keeping the folder structure
find template -type f ! -name '*example*' -exec sh -c 'mkdir -p "$0/$(dirname ${1#*/})" && cp "$1" "$0/${1#*/}"' "$destination_directory" {} \;
