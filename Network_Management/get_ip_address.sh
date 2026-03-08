#!/bin/bash

# ------------------------------------------------------------
# Script Name : get_ip_address.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Description :
# This script displays the IP addresses of all active
# network interfaces on the system.
#
# Usage:
# ./get_ip_address.sh
# ------------------------------------------------------------

echo "======================================"
echo "System IP Address Information"
echo "======================================"

# Show network interfaces with IPv4 addresses
ip -4 addr show | grep inet | awk '{print "IP Address:", $2, " | Interface:", $NF}'

echo "======================================"
echo "Primary IP Address"
echo "======================================"

# Display primary IP address
hostname -I | awk '{print $1}'
