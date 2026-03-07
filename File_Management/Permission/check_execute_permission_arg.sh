#!/usr/bin/bash

<< Description
 This script checks whether the current user has EXECUTE permission on a given file or directory.

 The path is provided as a command-line argument.
 In Linux:
	 - For files      → checks if the file can be executed
	 - For directories → checks if the directory can be accessed

Description
# Check if argument is provided
if [[ -z $1 ]]; then
    echo "Error: No path provided."
    echo "Usage: ./check_execute_permission_arg.sh <file_or_directory_path>"
    exit 1
fi

# Check if the path exists
if [[ ! -e $1 ]]; then
    echo "Error: The specified path does not exist -> $1"
    exit 1
fi

# Check execute permission
if [[ -x $1 ]]; then
    echo "SUCCESS: Execute permission is available for -> $1"
else
    echo "INFO: Execute permission is NOT available for -> $1"
fi
