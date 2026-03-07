#!/usr/bin/bash


<< Description
 This script checks whether the current user has READ permission on a given file or directory.
 It works for both files and directories because Linux permissions apply to both.
Description

# Check if argument is provided
if [ -z "$1" ]; then
    echo "Error: No path provided."
    echo "Usage: ./check_read_permission.sh <file_or_directory_path>"
    exit 1
fi

# Check if path exists
if [ ! -e "$1" ]; then
    echo "The specified path does not exist: $1"
    exit 1
fi

# Check read permission
if [ -r "$1" ]; then
    echo "Read permission is available for: $1"
else
    echo "Read permission is NOT available for: $1"
fi
