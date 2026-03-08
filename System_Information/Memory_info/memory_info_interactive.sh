#!/bin/bash

<< task
 Interactive script to display different types of memory usage information.
task


# Check if 'free' command exists
if ! command -v free &> /dev/null
then
    echo "Error: 'free' command not found."
    exit 1
fi

echo "===== Memory Information Menu ====="
echo "1. Full Memory Information"
echo "2. Total Memory"
echo "3. Used Memory"
echo "4. Free Memory"
echo "5. Available Memory"
echo "6. Exit"
echo "==================================="

read -p "Enter your choice (1-6): " choice

case $choice in
    1)
        free -h
        ;;
    2)
        free -h | awk '/Mem:/ {print "Total Memory: " $2}'
        ;;
    3)
        free -h | awk '/Mem:/ {print "Used Memory: " $3}'
        ;;
    4)
        free -h | awk '/Mem:/ {print "Free Memory: " $4}'
        ;;
    5)
        free -h | awk '/Mem:/ {print "Available Memory: " $7}'
        ;;
    6)
        echo "Exiting script."
        exit 0
        ;;
    *)
        echo "Invalid choice. Please select between 1 and 6."
        ;;
esac
