#!/bin/bash

# ------------------------------------------------------------
# Script Name : network_monitor.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha

# Task: This script monitors real-time network traffic. It automatically selects an available monitoring tool installed on the system.
#
# Tools supported:
# - iftop
# - nload
# - vnstat
#
# Usage:
# ./network_monitor.sh
# ------------------------------------------------------------


echo "======================================"
echo "Network Monitoring Tool"
echo "======================================"

# Check if iftop is installed
if command -v iftop &> /dev/null
then
    echo "Launching network monitor using: iftop"
    sudo iftop
    exit
fi

# Check if nload is installed
if command -v nload &> /dev/null
then
    echo "Launching network monitor using: nload"
    nload
    exit
fi

# Check if vnstat is installed
if command -v vnstat &> /dev/null
then
    echo "Displaying network statistics using: vnstat"
    vnstat
    exit
fi

echo "No supported monitoring tools found."
echo "Install one of the following tools:"
echo "sudo apt install iftop"
echo "sudo apt install nload"
echo "sudo apt install vnstat"
