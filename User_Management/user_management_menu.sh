#!/bin/bash

# ------------------------------------------------------------
# Script Name : user_management_menu.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Description :
# Interactive menu for managing user-related scripts.
# Allows administrators to perform user management tasks from a single interface.
# ------------------------------------------------------------

while true
do
    echo "========================================"
    echo "        User Management Toolkit"
    echo "========================================"
    echo "1. List All Users"
    echo "2. Check User Existence"
    echo "3. Create New User"
    echo "4. Delete User"
    echo "5. Show Sudo Users"
    echo "6. Detect Locked Accounts"
    echo "7. View User Login History"
    echo "8. Exit"
    echo "========================================"

    read -p "Enter your choice: " CHOICE

    case $CHOICE in
        1)
            ./list_all_users.sh
            ;;

        2)
            read -p "Enter username: " USERNAME
            ./check_user_existence.sh "$USERNAME"
            ;;

        3)
            read -p "Enter username to create: " USERNAME
            ./create_new_user.sh "$USERNAME"
            ;;

        4)
            read -p "Enter username to delete: " USERNAME
            ./delete_user.sh "$USERNAME"
            ;;

        5)
            ./sudo_users_detector.sh
            ;;

        6)
            ./locked_accounts_detector.sh
            ;;

        7)
            read -p "Enter username: " USERNAME
            ./user_login_history.sh "$USERNAME"
            ;;

        8)
            echo "Exiting User Management Toolkit..."
            exit 0
            ;;

        *)
            echo "Invalid option. Please try again."
            ;;
    esac

    echo
    read -p "Press Enter to continue..."
    clear
done
