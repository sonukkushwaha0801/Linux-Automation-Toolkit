#!/bin/bash

# ------------------------------------------------------------
# Script Name : list_all_users.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Description :
# Lists all users present on the Linux system by reading
# the /etc/passwd file.
# ------------------------------------------------------------

echo "========================================"
echo "List of Users on the System"
echo "========================================"

# Check if /etc/passwd exists
if [ ! -f /etc/passwd ]; then
    echo "Error: /etc/passwd file not found."
    exit 1
fi

echo "Fetching user accounts..."
echo "----------------------------------------"

cut -d: -f1 /etc/passwd

echo "----------------------------------------"
echo "Total Users: $(cut -d: -f1 /etc/passwd | wc -l)"
