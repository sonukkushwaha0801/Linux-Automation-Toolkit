#!/usr/bin/bash
#!/bin/bash


<< task
 This script checks whether a file exists in the current directory by asking the user to enter a filename.
 Behaviour:
	1. The script prompts the user to enter a filename.
	2. If the file already exists → a message is displayed.
	3. If the file does not exist → the script creates the file.
task

# Ask user for filename
read -p "Enter the filename you want to check: " filename

# Validate input
if [ -z "$filename" ]; then
    echo "❌ Error: Filename cannot be empty."
    exit 1
fi

# Check if file exists
if [ -f "$filename" ]; then
    echo "⚠️ File '$filename' already exists in this directory."
else
    touch "$filename"
    echo "📁 File '$filename' was not found."
    echo "✅ New file '$filename' has been created successfully."
fi
