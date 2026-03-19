#!/bin/bash

BASE_DIR=$(dirname "$0")

pause_screen() {
    echo ""
    read -p "Press Enter to continue..."
}

while true; do
    clear
    echo "=========== LOG MANAGEMENT ==========="
    echo "1. View System Logs"
    echo "2. Monitor Logs (Live)"
    echo "3. Login & Access Logs"
    echo "4. Security Analysis"
    echo "5. Back"
    echo "======================================"

    read -p "Enter your choice: " choice

    case $choice in
        1)
            bash "$BASE_DIR/view_system_logs.sh"
            pause_screen
            ;;

        2)
            while true; do
                clear
                echo "------ LIVE LOG MONITORING ------"
                echo "1. Monitor All Logs"
                echo "2. Monitor Logs with Filter"
                echo "3. Back"

                read -p "Choose option: " subchoice

                case $subchoice in
                    1)
                        bash "$BASE_DIR/monitor_live_logs.sh"
                        pause_screen
                        ;;
                    2)
                        bash "$BASE_DIR/monitor_live_logs_filter.sh"
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
                echo "------ LOGIN & ACCESS LOGS ------"
                echo "1. Recent Login History"
                echo "2. Failed Login Attempts"
                echo "3. Remote Access Failures"
                echo "4. Back"

                read -p "Choose option: " subchoice

                case $subchoice in
                    1)
                        bash "$BASE_DIR/recent_login_history.sh"
                        pause_screen
                        ;;
                    2)
                        bash "$BASE_DIR/find_failed_login_attempts.sh"
                        pause_screen
                        ;;
                    3)
                        bash "$BASE_DIR/remote_access_failures.sh"
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

        4)
            while true; do
                clear
                echo "------ SECURITY ANALYSIS ------"
                echo "1. Failed Sudo Attempts"
                echo "2. Suspicious IP Detector"
                echo "3. Top Failed SSH IPs"
                echo "4. Top Error Messages"
                echo "5. Back"

                read -p "Choose option: " subchoice

                case $subchoice in
                    1)
                        bash "$BASE_DIR/failed_sudo_attempts.sh"
                        pause_screen
                        ;;
                    2)
                        bash "$BASE_DIR/suspicious_ip_detector.sh"
                        pause_screen
                        ;;
                    3)
                        bash "$BASE_DIR/top_failed_ssh_ips.sh"
                        pause_screen
                        ;;
                    4)
                        bash "$BASE_DIR/top_error_messages.sh"
                        pause_screen
                        ;;
                    5)
                        break
                        ;;
                    *)
                        echo "Invalid option"
                        sleep 1
                        ;;
                esac
            done
            ;;

        5)
            break
            ;;

        *)
            echo "Invalid choice"
            sleep 1
            ;;
    esac
done
