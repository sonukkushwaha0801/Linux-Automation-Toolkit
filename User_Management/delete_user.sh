#!/bin/bash

# ------------------------------------------------------------
# Script Name : delete_user.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Description :
# Deletes an existing user from the Linux system.
# Optionally removes the user's home directory.
# Requires root or sudo privileges.
# ------------------------------------------------------------

echo "========================================"
echo "Delete User from System"
echo "========================================"

# Check if username provided
if [ -z "$1" ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

USERNAME=$1

# Check if user exists
if ! id "$USERNAME" &>/dev/null; then
    echo "User '$USERNAME' does not exist."
    exit 1
fi

echo "Deleting user: $USERNAME"
echo "----------------------------------------"

sudo userdel -r "$USERNAME"

if [ $? -eq 0 ]; then
    echo "User '$USERNAME' deleted successfully."
else
    echo "Failed to delete user."
fi

echo "----------------------------------------"
echo "Operation Complete"
