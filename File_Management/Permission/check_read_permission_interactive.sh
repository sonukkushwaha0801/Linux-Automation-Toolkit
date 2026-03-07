#!/bin/bash

# Task Type: Permission Check
<< Description
 This script checks whether the current user has READ permission on a given file or directory.
 The script asks the user to enter the path interactively.
Description


# Ask user for path
read -p "Enter file or directory path: " path

# Check if path exists
if [ ! -e "$path" ]; then
    echo "Path does not exist: $path"
    exit 1
fi

# Check read permission
if [ -r "$path" ]; then
    echo "Read permission is available for: $path"
else
    echo "Read permission is NOT available for: $path"
fi
