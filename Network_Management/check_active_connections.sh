#!/bin/bash

# ------------------------------------------------------------
# Script Name : check_active_connections.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Description :
# This script displays active TCP network connections
# including local address, remote address, and connection state.
#
# Usage:
# ./check_active_connections.sh
# ------------------------------------------------------------

echo "======================================"
echo "Active Network Connections"
echo "======================================"

# Show active TCP connections
ss -tn

echo "======================================"
echo "Detailed Active Connections"
echo "======================================"

# Display formatted output
ss -tn | awk 'NR>1 {print "Local:", $4, "| Remote:", $5, "| State:", $1}'
