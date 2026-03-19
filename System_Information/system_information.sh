#!/bin/bash

BASE_DIR=$(dirname "$0")

pause_screen() {
    echo ""
    read -p "Press Enter to continue..."
}

while true; do
    clear
    echo "=========== SYSTEM INFORMATION ==========="
    echo "1. CPU Information"
    echo "2. Disk Information"
    echo "3. Memory Information"
    echo "4. Back"
    echo "=========================================="

    read -p "Enter your choice: " choice

    case $choice in

        1)
            while true; do
                clear
                echo "------ CPU INFORMATION ------"
                echo "1. View CPU Info (Interactive)"
                echo "2. Back"

                read -p "Choose option: " subchoice

                case $subchoice in
                    1)
                        bash "$BASE_DIR/CPU_info/cpu_info_interactive.sh"
                        pause_screen
                        ;;
                    2)
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
                echo "------ DISK INFORMATION ------"
                echo "1. View Disk Info (Interactive)"
                echo "2. Back"

                read -p "Choose option: " subchoice

                case $subchoice in
                    1)
                        bash "$BASE_DIR/Disk_info/disk_info_interactive.sh"
                        pause_screen
                        ;;
                    2)
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
                echo "------ MEMORY INFORMATION ------"
                echo "1. View Memory Info (Interactive)"
                echo "2. Back"

                read -p "Choose option: " subchoice

                case $subchoice in
                    1)
                        bash "$BASE_DIR/Memory_info/memory_info_interactive.sh"
                        pause_screen
                        ;;
                    2)
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
