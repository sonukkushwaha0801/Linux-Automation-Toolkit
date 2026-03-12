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

# Check locked accounts using passwd status
passwd -S -a | awk '$2 == "L" {print $1}'

echo "----------------------------------------"
echo "Scan Complete"
