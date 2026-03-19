#!/bin/bash

BASE_DIR=$(dirname "$0")

pause_screen() {
    echo ""
    read -p "Press Enter to continue..."
}

while true; do
    clear
    echo "=========== USER MANAGEMENT ==========="
    echo "1. User Operations"
    echo "2. User Information"
    echo "3. Security & Audit"
    echo "4. Back"
    echo "======================================="

    read -p "Enter your choice: " choice

    case $choice in

        1)
            while true; do
                clear
                echo "------ USER OPERATIONS ------"
                echo "1. Create New User"
                echo "2. Delete User"
                echo "3. Check User Existence"
                echo "4. Back"

                read -p "Choose option: " subchoice

                case $subchoice in
                    1)
                        bash "$BASE_DIR/create_new_user.sh"
                        pause_screen
                        ;;
                    2)
                        read -p "Enter username to delete: " username
                        bash "$BASE_DIR/delete_user.sh" "$username"
                        pause_screen
                        ;;
                    3)
                        read -p "Enter username to check: " username
                        bash "$BASE_DIR/check_user_existence.sh" "$username"
                        pause_screen
                        ;;
                    4)
                        break
                        ;;
                    *)
                        echo "Invalid option"
                        sleep 1
                        ;;
                esac
            done
            ;;

        2)
            while true; do
                clear
                echo "------ USER INFORMATION ------"
                echo "1. List All Users"
                echo "2. User Login History"
                echo "3. Back"

                read -p "Choose option: " subchoice

                case $subchoice in
                    1)
                        bash "$BASE_DIR/list_all_users.sh"
                        pause_screen
                        ;;
                    2)
                        bash "$BASE_DIR/user_login_history.sh"
                        pause_screen
                        ;;
                    3)
                        break
                        ;;
                    *)
                        echo "Invalid option"
                        sleep 1
                        ;;
                esac
            done
            ;;

        3)
            while true; do
                clear
                echo "------ SECURITY & AUDIT ------"
                echo "1. Detect Sudo Users"
                echo "2. Detect Locked Accounts"
                echo "3. Back"

                read -p "Choose option: " subchoice

                case $subchoice in
                    1)
                        bash "$BASE_DIR/sudo_users_detector.sh"
                        pause_screen
                        ;;
                    2)
                        bash "$BASE_DIR/locked_accounts_detector.sh"
                        pause_screen
                        ;;
                    3)
                        break
                        ;;
                    *)
                        echo "Invalid option"
                        sleep 1
                        ;;
                esac
            done
            ;;

        4)
            break
            ;;

        *)
            echo "Invalid choice"
            sleep 1
            ;;
    esac
done
