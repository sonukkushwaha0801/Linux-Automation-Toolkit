#!/bin/bash

# ------------------------------------------------------------
# Script Name : sudo_users_detector.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Description :
# Lists all users who have sudo privileges on the system.
# ------------------------------------------------------------

echo "========================================"
echo "Users with Sudo Privileges"
echo "========================================"

echo "Fetching sudo group members..."
echo "----------------------------------------"

# Check if sudo group exists
if getent group sudo > /dev/null; then
    getent group sudo | awk -F: '{print $4}' | tr ',' '\n'
else
    echo "No sudo group found on this system."
fi

echo "----------------------------------------"
echo "Check Complete"
