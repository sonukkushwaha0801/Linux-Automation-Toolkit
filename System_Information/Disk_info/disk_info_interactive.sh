#!/bin/bash

<< task 
 Interactive script to display disk usage information. The user can choose different disk-related details from a menu.
task


# Check if 'df' command exists
if ! command -v df &> /dev/null
then
    echo "Error: 'df' command not found."
    exit 1
fi

echo "===== Disk Information Menu ====="
echo "1. Full Disk Usage"
echo "2. Root Filesystem Usage"
echo "3. Specific Mount Point"
echo "4. Show Filesystem Types"
echo "5. Exit"
echo "================================="

read -p "Enter your choice (1-5): " choice

case $choice in
    1)
        echo "Displaying full disk usage:"
        df -h
        ;;
    2)
        echo "Root filesystem usage:"
        df -h /
        ;;
    3)
        read -p "Enter mount point (example: /home): " mountpoint
        df -h | grep "$mountpoint"
        ;;
    4)
        echo "Filesystem types:"
        df -Th
        ;;
    5)
        echo "Exiting script."
        exit 0
        ;;
    *)
        echo "Invalid choice. Please select between 1 and 5."
        ;;
esac
