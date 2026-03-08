#!/bin/bash

<< Description
 This script displays CPU information of the system.The user can optionally pass a keyword as an argument to filter specific CPU details.
Description

# Check if lscpu command exists
if ! command -v lscpu &> /dev/null
then
    echo "Error: lscpu command not found."
    exit 1
fi

# If no argument provided → show full CPU info
if [[ -z $1 ]]; then
    echo "Displaying full CPU information:"
    echo "--------------------------------"
    lscpu
else
    keyword="$1"

    echo "Filtering CPU information for: $keyword"
    echo "----------------------------------------"

    lscpu | grep -i "$keyword"

    if [[ $? -ne 0 ]]; then
        echo "No matching CPU information found for: $keyword"
    fi
fi
