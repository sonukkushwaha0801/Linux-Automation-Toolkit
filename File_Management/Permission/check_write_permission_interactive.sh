#!/usr/bin/bash

<< Description
 This script checks whether the current user has WRITE permission on a given file or directory.

 The script asks the user to enter the path interactively.

 Works for:
	 - Files
	 - Directories
Description

# Ask user for file or directory path
read -p "Enter file or directory path: " path

# Check if path exists
if [ ! -e "$path" ]; then
    echo "The specified path does not exist: $path"
    exit 1
fi

# Check write permission
if [ -w "$path" ]; then
    echo "Write permission is available for: $path"
else
    echo "Write permission is NOT available for: $path"
fi
