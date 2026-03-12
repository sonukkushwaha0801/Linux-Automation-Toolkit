#!/bin/bash

# ------------------------------------------------------------
# Script Name : user_login_history.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Description :
# Displays login history for a specific user.
# ------------------------------------------------------------

echo "========================================"
echo "User Login History"
echo "========================================"

# Get username
if [ -z "$1" ]; then
    read -p "Enter username: " USERNAME
else
    USERNAME=$1
fi

echo "Fetching login history for: $USERNAME"
echo "----------------------------------------"

journalctl _COMM=sshd --no-pager |
grep "Accepted" |
grep "$USERNAME"

echo "----------------------------------------"
echo "Report Complete"
