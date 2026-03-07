#!/usr/bin/env bash

<< task
 This script checks whether a directory exists in the current location by asking the user to enter a directory name.
 Behaviour:
	1. The script prompts the user to enter a directory name.
	2. If the directory already exists → a message is displayed.
	3. If the directory does not exist → the script creates it.
task

# Ask user for directory name
read -p "Enter the directory name you want to check: " dirname

# Validate input
if [ -z "$dirname" ]; then
    echo "❌ Error: Directory name cannot be empty."
    exit 1
fi

# Check if directory exists
if [ -d "$dirname" ]; then
    echo "⚠️ Directory '$dirname' already exists in this location."
else
    mkdir "$dirname"
    echo "📂 Directory '$dirname' was not found."
    echo "✅ New directory '$dirname' has been created successfully."
fi
