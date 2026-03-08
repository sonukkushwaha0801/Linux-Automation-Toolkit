l#!/bin/bash

# Task:  This script lists all currently running processes on the system in a readable format.

# Check if 'ps' command exists
if ! command -v ps &> /dev/null
then
    echo "Error: 'ps' command not found."
    exit 1
fi

echo "======================================"
echo "        Running Processes List        "
echo "======================================"

ps -ef

echo "======================================"
echo "Total running processes:"
ps -e | wc -l
