#!/usr/bin/bash

<< task
 Displays disk usage information. If a filesystem, mount point, or keyword is provided as an argument, the script filters the disk usage output accordingly.
task



# Check if 'df' command exists
if ! command -v df &> /dev/null
then
    echo "Error: 'df' command not found."
    exit 1
fi

# If no argument provided → show full disk info
if [[ -z $1 ]]; then
    echo "Displaying full disk usage information:"
    echo "---------------------------------------"
    df -h
else
    keyword="$1"

    echo "Filtering disk information for: $keyword"
    echo "----------------------------------------"

    df -h | grep -i "$keyword"

    if [[ $? -ne 0 ]]; then
        echo "No matching disk information found for: $keyword"
    fi
fi
