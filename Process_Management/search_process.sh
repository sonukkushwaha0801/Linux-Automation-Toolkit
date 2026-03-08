#!/bin/bash

# ------------------------------------------------------------
# Script Name : search_process.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Description :
# This script searches for a running process by name.
# The process name should be provided as a command-line argument.
#
# Usage:
# ./search_process.sh <process_name>
#
# Example:
# ./search_process.sh ssh
# ./search_process.sh firefox
# ------------------------------------------------------------



# Check if argument is provided
if [[ -z $1 ]]; then
    echo "Error: No process name provided."
    echo "Usage: ./search_process.sh <process_name>"
    exit 1
fi

process_name="$1"

echo "Searching for process: $process_name"
echo "------------------------------------"

# Search for process
ps -ef | grep -i "$process_name" | grep -v grep

# Check if process exists
if [[ $? -ne 0 ]]; then
    echo "No running process found with name: $process_name"
fi
