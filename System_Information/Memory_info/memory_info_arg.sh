#!/usr/bin/bash

<< task
 Displays system memory information. If a keyword is provided as an argument, the output will be filtered accordingly.
task


# Check if 'free' command exists
if ! command -v free &> /dev/null
then
    echo "Error: 'free' command not found."
    exit 1
fi

# If no argument → show full memory info
if [[ -z $1 ]]; then
    echo "Displaying full memory information:"
    echo "-----------------------------------"
    free -h
else
    keyword="$1"

    echo "Filtering memory information for: $keyword"
    echo "------------------------------------------"

    free -h | grep -i "$keyword"

    if [[ $? -ne 0 ]]; then
        echo "No matching memory information found for: $keyword"
    fi
fi
