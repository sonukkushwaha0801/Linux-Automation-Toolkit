#!/usr/bin/bash
#!/bin/bash

<< task
 This script checks whether a file exists in the current directory using a filename passed as a command-line argument.
 Behaviour:
	1. If no filename argument is provided → script exits with usage message.
	2. If the file already exists → a message is displayed.
	3. If the file does not exist → the script creates the file.
task

# Check if filename argument is provided
if [ -z "$1" ]; then
    echo "❌ Error: No filename provided."
    echo "Usage: ./check_and_create_file_arg.sh <filename>"
    exit 1
fi


# Check if file already exists
if [ -f "$1" ]; then
    echo "⚠️ File '$1' already exists in this directory."
else
    touch "$1"
    echo "✅ File '$1' was not found."
    echo "📁 New file '$1' has been created successfully."
fi
