#!/usr/bin/bash


<< Description
 This script checks whether the current user has WRITE permission on a given file or directory.
 The path is passed as a command-line argument.
 Works for:
 	- Files
 	- Directories
Description



# Check if argument is provided
if [ -z "$1" ]; then
    echo "Error: No path provided."
    echo "Usage: ./check_write_permission_arg.sh <file_or_directory_path>"
    exit 1
fi

# Check if file or directory exists
if [ ! -e "$1" ]; then
    echo "The specified path does not exist: $1"
    exit 1
fi

# Check write permission
if [ -w "$1" ]; then
    echo "Write permission is available for: $1"
else
    echo "Write permission is NOT available for: $1"
fi
