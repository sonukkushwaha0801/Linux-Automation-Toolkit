#!/bin/bash

BASE_DIR=$(dirname "$0")

pause_screen() {
    echo ""
    read -p "Press Enter to continue..."
}

while true; do
    clear
    echo "=========== PROCESS MANAGEMENT ==========="
    echo "1. View Processes"
    echo "2. Resource Usage"
    echo "3. Process Control"
    echo "4. Back"
    echo "=========================================="

    read -p "Enter your choice: " choice

    case $choice in

        1)
            while true; do
                clear
                echo "------ VIEW PROCESSES ------"
                echo "1. List Running Processes"
                echo "2. Search Process"
                echo "3. Back"

                read -p "Choose option: " subchoice

                case $subchoice in
                    1)
                        bash "$BASE_DIR/list_running_process.sh"
                        pause_screen
                        ;;
                    2)
                        read -p "Enter process name: " pname
                        bash "$BASE_DIR/search_process.sh" "$pname"
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

        2)
            while true; do
                clear
                echo "------ RESOURCE USAGE ------"
                echo "1. Top CPU Processes"
                echo "2. Top Memory Processes"
                echo "3. Back"

                read -p "Choose option: " subchoice

                case $subchoice in
                    1)
                        bash "$BASE_DIR/top_cpu_process.sh"
                        pause_screen
                        ;;
                    2)
                        bash "$BASE_DIR/top_memory_process.sh"
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
                echo "------ PROCESS CONTROL ------"
                echo "1. Kill Process"
                echo "2. Back"

                read -p "Choose option: " subchoice

                case $subchoice in
                    1)
                        read -p "Enter PID to kill: " pid
                        bash "$BASE_DIR/kill_process.sh" "$pid"
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
