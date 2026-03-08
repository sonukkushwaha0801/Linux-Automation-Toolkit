#!/bin/bash

# ------------------------------------------------------------
# Script Name : kill_process.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kuswhaha
#
# Description :
# This script terminates a running process using its PID.
# The PID must be provided as a command-line argument.
#
# Usage:
# ./kill_process.sh <PID>
#
# Example:
# ./kill_process.sh 1234
# ------------------------------------------------------------

# Check if PID is provided
if [[ -z $1 ]]; then
    echo "Error: No PID provided."
    echo "Usage: ./kill_process.sh <PID>"
    exit 1
fi

pid="$1"

# Check if process exists
if ! ps -p "$pid" > /dev/null
then
    echo "Error: No process found with PID $pid"
    exit 1
fi

echo "Process details:"
ps -p "$pid"

# Ask user confirmation
read -p "Do you want to terminate this process? (y/n): " confirm

if [[ $confirm == "y" || $confirm == "Y" ]]; then
    kill "$pid"
    echo "Process with PID $pid has been terminated."
else
    echo "Operation cancelled."
fi
