#!/bin/bash

BASE_DIR=$(dirname "$0")

while true; do
    clear
    echo "=========== LINUX AUTOMATION TOOLKIT ==========="
    echo "1. File Management"
    echo "2. Log Management"
    echo "3. Network Management"
    echo "4. Process Management"
    echo "5. System Information"
    echo "6. User Management"
    echo "7. Exit"
    echo "==============================================="

    read -p "Enter your choice: " choice

    case $choice in
        1)
            bash "$BASE_DIR/File_Management/file_management.sh"
            ;;
        2)
            bash "$BASE_DIR/Log_Management/log_management.sh"
            ;;
        3)
       	    bash "$BASE_DIR/Network_Management/network_management.sh"
            ;;
        4)
            bash "$BASE_DIR/Process_Management/process_management.sh"
            ;;
        5)
            bash "$BASE_DIR/System_Information/system_information.sh"
            ;;
        6)
            bash "$BASE_DIR/User_Management/user_management.sh"
            ;;
        7)
            echo "Exiting Toolkit..."
            exit 0
            ;;
        *)
            echo "Invalid choice"
            sleep 1
            ;;
    esac
done
