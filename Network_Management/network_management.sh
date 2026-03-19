#!/bin/bash

BASE_DIR=$(dirname "$0")

pause_screen() {
    echo ""
    read -p "Press Enter to continue..."
}

while true; do
    clear
    echo "=========== NETWORK MANAGEMENT ==========="
    echo "1. Basic Network Info"
    echo "2. Connectivity Tools"
    echo "3. DNS Tools"
    echo "4. Monitoring & Analysis"
    echo "5. Scanning & Ports"
    echo "6. Back"
    echo "=========================================="

    read -p "Enter your choice: " choice

    case $choice in
        1)
            while true; do
                clear
                echo "------ BASIC NETWORK INFO ------"
                echo "1. Get IP Address"
                echo "2. Check DNS Server"
                echo "3. Back"

                read -p "Choose option: " subchoice

                case $subchoice in
                    1)
                        bash "$BASE_DIR/get_ip_address.sh"
                        pause_screen
                        ;;
                    2)
                        read -p "Enter domain name (e.g. google.com): " domain
		bash "$BASE_DIR/check_dns_server.sh" "$domain"
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
                echo "------ CONNECTIVITY TOOLS ------"
                echo "1. Ping Host"
                echo "2. Traceroute"
                echo "3. Website Status Checker"
                echo "4. Back"

                read -p "Choose option: " subchoice

                case $subchoice in
                    1)
                    	read -p "Enter Hostname or IP :" host
                        bash "$BASE_DIR/ping_host.sh" "$host"
                        pause_screen
                        ;;
                    2)
                    	read -p "Enter Host:" host
                        bash "$BASE_DIR/traceroute_host.sh" "$host"
                        pause_screen
                        ;;
                    3)
                    	read -p "Enter Website Name:" website
                        bash "$BASE_DIR/website_status_checker.sh" "$website"
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

        3)
            while true; do
                clear
                echo "------ DNS TOOLS ------"
                echo "1. DNS Lookup"
                echo "2. Reverse DNS Lookup"
                echo "3. Back"

                read -p "Choose option: " subchoice

                case $subchoice in
                    1)
                    	read -p "Enter domain for which you want to Check" domain
                        bash "$BASE_DIR/dns_lookup_domain.sh" "$domain"
                        pause_screen
                        ;;
                    2)
                    	read -p "Enter DNS for which you are looking for:" dns
                        bash "$BASE_DIR/reverse_dns_lookup.sh" "$dns"
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
            while true; do
                clear
                echo "------ MONITORING & ANALYSIS ------"
                echo "1. Network Monitor"
                echo "2. Network Latency Monitor"
                echo "3. Active Connections"
                echo "4. Back"

                read -p "Choose option: " subchoice

                case $subchoice in
                    1)
                        bash "$BASE_DIR/network_monitor.sh"
                        pause_screen
                        ;;
                    2)
                    	read -p "Enter IP Addresses:" addrs
                        bash "$BASE_DIR/network_latency_monitor.sh" "$addrs"
                        pause_screen
                        ;;
                    3)
                        bash "$BASE_DIR/check_active_connections.sh"
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

        5)
            while true; do
                clear
                echo "------ SCANNING & PORTS ------"
                echo "1. Network Scan"
                echo "2. Check Open Ports"
                echo "3. Back"

                read -p "Choose option: " subchoice

                case $subchoice in
                    1)
                    	read -p "Enter network name:" network
                        bash "$BASE_DIR/network_scan.sh" "$network"
                        pause_screen
                        ;;
                    2)
                    	read -p "Enter Port number:" post
                        bash "$BASE_DIR/check_open_ports.sh" "$port"
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

        6)
            break
            ;;

        *)
            echo "Invalid choice"
            sleep 1
            ;;
    esac
done
