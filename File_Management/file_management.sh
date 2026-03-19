#!/bin/bash

BASE_DIR=$(dirname "$0")

while true; do
    clear
    echo "========== FILE MANAGEMENT =========="
    echo "1. Directory Operations"
    echo "2. File Operations"
    echo "3. Permission Management"
    echo "4. Back to Main Menu"
    echo "===================================="

    read -p "Enter your choice: " choice

    case $choice in
        1)
            bash "$BASE_DIR/Directory_existence/check_and_create_directory_interactive.sh"
            ;;
        2)
            bash "$BASE_DIR/File_existence/check_and_create_file_interactive.sh"
            ;;
        3)
            bash "$BASE_DIR/Permission/permission_management.sh"
            ;;
        4)
            break
            ;;
        *)
            echo "Invalid choice!"
            sleep 1
            ;;
    esac

    echo ""
    read -p "Press Enter to continue..."
done
