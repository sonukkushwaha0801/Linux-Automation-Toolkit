#!/usr/bin/bash

<< Description
 This script checks whether the current user has EXECUTE permission on a specified file or directory.
 The script asks the user to enter the path interactively.

 In Linux:
 - For files       → checks if the file can be executed
 - For directories → checks if the directory can be accessed
Description


# Ask user for file or directory path
read -rp "Enter file or directory path: " path

# Check if input is empty
if [[ -z $path ]]; then
    echo "Error: No path entered."
    exit 1
fi

# Check if path exists
if [[ ! -e $path ]]; then
    echo "Error: The specified path does not exist -> $path"
    exit 1
fi

# Check execute permission
if [[ -x $path ]]; then
    echo "SUCCESS: Execute permission is available for -> $path"
else
    echo "INFO: Execute permission is NOT available for -> $path"
fi
