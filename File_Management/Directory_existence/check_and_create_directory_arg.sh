#!/usr/bin/bash

<< Task
 This script checks whether a directory exists in the current location using a directory name passed as a command-line argument.
 Behaviour:
	1. If no directory name is provided → script exits.
	2. If directory already exists → show message.
	3. If directory does not exist → create it.
Task


# Check if directory name is provided
if [ -z "$1" ]; then
    echo "❌ Error: No directory name provided."
    echo "Usage: ./check_and_create_directory_arg.sh <directory_name>"
    exit 1
fi

# Check if directory exists
if [ -d "$1" ]; then
    echo "⚠️ Directory '$1' already exists in this location."
else
    mkdir "$1"
    echo "📂 Directory '$1' was not found."
    echo "✅ New directory '$1' has been created successfully."
fi
