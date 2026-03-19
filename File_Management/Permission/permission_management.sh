#!/bin/bash

BASE_DIR=$(dirname "$0")

while true; do
    clear
    echo "====== PERMISSION MANAGEMENT ======"
    echo "1. Check Execute Permission"
    echo "2. Check Read Permission"
    echo "3. Check Write Permission"
    echo "4. Back"
    echo "==================================="

    read -p "Enter your choice: " choice

    case $choice in
        1)
            bash "$BASE_DIR/check_execute_permission_interactive.sh"
            ;;
        2)
            bash "$BASE_DIR/check_read_permission_interactive.sh"
            ;;
        3)
            bash "$BASE_DIR/check_write_permission_interactive.sh"
            ;;
        4)
            break
            ;;
        *)
            echo "Invalid choice"
            sleep 1
            ;;
    esac

    echo ""
    read -p "Press Enter to continue..."
done
