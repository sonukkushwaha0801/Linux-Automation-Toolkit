#!/usr/bin/bash

# ------------------------------------------------------------
# Script Name : ping_host.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Task:  This script checks network connectivity to a host by sending ICMP ping requests.
#
# Usage:
# ./ping_host.sh <hostname_or_ip>
#
# Example:
# ./ping_host.sh google.com
# ./ping_host.sh 8.8.8.8
# ------------------------------------------------------------

# Check if host argument is provided
if [[ -z $1 ]]; then
    echo "Error: No host provided."
    echo "Usage: ./ping_host.sh <hostname_or_ip>"
    exit 1
fi

host="$1"

echo "======================================"
echo "Checking connectivity to: $host"
echo "======================================"

# Send 4 ping requests
ping -c 4 "$host"

# Check status
if [[ $? -eq 0 ]]; then
    echo "SUCCESS: Host $host is reachable."
else
    echo "ERROR: Host $host is not reachable."
fi
