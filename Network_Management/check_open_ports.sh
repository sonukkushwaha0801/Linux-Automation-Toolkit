#!/bin/bash

# ------------------------------------------------------------
# Script Name : check_open_ports.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Description :
# This script displays all open/listening ports on the system.
# It helps identify which services are currently accepting
# network connections.
#
# Usage:
# ./check_open_ports.sh
# ------------------------------------------------------------

echo "======================================"
echo "Checking Open Ports on the System"
echo "======================================"

# Display open ports
ss -tuln

echo "======================================"
echo "Open Ports Summary"
echo "======================================"

# Show only port numbers
ss -tuln | awk 'NR>1 {print $5}' | awk -F':' '{print $NF}' | sort -n | uniq
