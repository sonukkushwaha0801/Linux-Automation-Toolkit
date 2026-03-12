#!/bin/bash

# ------------------------------------------------------------
# Script Name : create_new_user.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Description :
# Creates a new user on the Linux system with a home directory.
# Requires root or sudo privileges.
# ------------------------------------------------------------

echo "========================================"
echo "Create New User"
echo "========================================"

# Check if username provided
if [ -z "$1" ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

USERNAME=$1

# Check if user already exists
if id "$USERNAME" &>/dev/null; then
    echo "User '$USERNAME' already exists."
    exit 1
fi

echo "Creating user: $USERNAME"
echo "----------------------------------------"

sudo useradd -m "$USERNAME"

if [ $? -eq 0 ]; then
    echo "User '$USERNAME' created successfully."
    echo "Set password using: sudo passwd $USERNAME"
else
    echo "Failed to create user."
fi

echo "----------------------------------------"
echo "Operation Complete"
