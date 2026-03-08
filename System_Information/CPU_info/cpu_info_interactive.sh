#!/bin/bash

<< task
 This script interactively displays CPU information. The user can choose which CPU detail they want to see.
task



# Check if lscpu command exists
if ! command -v lscpu &> /dev/null
then
    echo "Error: lscpu command not found."
    exit 1
fi

echo "===== CPU Information Menu ====="
echo "1. Full CPU Information"
echo "2. CPU Model"
echo "3. CPU Architecture"
echo "4. Number of CPUs"
echo "5. CPU Cores"
echo "6. Exit"
echo "================================"

read -p "Enter your choice (1-6): " choice

case $choice in
    1)
        echo "Displaying full CPU information..."
        lscpu
        ;;
    2)
        echo "CPU Model:"
        lscpu | grep "Model name"
        ;;
    3)
        echo "CPU Architecture:"
        lscpu | grep "Architecture"
        ;;
    4)
        echo "Number of CPUs:"
        lscpu | grep "^CPU(s)"
        ;;
    5)
        echo "CPU Cores:"
        lscpu | grep "Core(s) per socket"
        ;;
    6)
        echo "Exiting script."
        exit 0
        ;;
    *)
        echo "Invalid choice. Please select between 1 and 6."
        ;;
esac
