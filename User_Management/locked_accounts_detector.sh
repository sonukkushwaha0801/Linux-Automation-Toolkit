#!/bin/bash

# ------------------------------------------------------------
# Script Name : locked_accounts_detector.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Description :
# Detects locked user accounts on the system.
# ------------------------------------------------------------

echo "========================================"
echo "Locked User Accounts"
echo "========================================"

echo "Scanning for locked accounts..."
echo "----------------------------------------"

if [[ $EUID -ne 0 ]]; then
    echo "Please run this script as root (use sudo)"
    exit 1
fi

# Check locked accounts using passwd status
passwd -S -a | awk '$2 == "L" {print $1}'

echo "----------------------------------------"
echo "Scan Complete"
