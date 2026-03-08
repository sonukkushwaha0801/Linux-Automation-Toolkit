#!/bin/bash

# ------------------------------------------------------------
# Script Name : network_scan.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha

# Task: This script scans the local network to find active devices using a ping sweep.
#
# Usage:
# ./network_scan.sh <network_prefix>
#
# Example:
# ./network_scan.sh 192.168.1
# ------------------------------------------------------------



if [[ -z $1 ]]; then
    echo "Usage: ./network_scan.sh <network_prefix>"
    echo "Example: ./network_scan.sh 192.168.1"
    exit 1
fi

network="$1"

echo "======================================"
echo "Scanning Network: $network.0/24"
echo "======================================"

for ip in {1..254}
do
    (
        ping -c 1 -W 1 "$network.$ip" &> /dev/null

        if [[ $? -eq 0 ]]; then
            echo "Active device found: $network.$ip"
        fi
    ) &
done

wait

echo "======================================"
echo "Network scan completed."
echo "======================================"
