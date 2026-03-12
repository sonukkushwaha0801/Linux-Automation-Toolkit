#!/bin/bash

# ------------------------------------------------------------
# Script Name : check_user_existence.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Description :
# Checks whether a given user exists on the system.
# ------------------------------------------------------------

echo "========================================"
echo "User Existence Checker"
echo "========================================"

# Check if username is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

USERNAME=$1

echo "Checking user: $USERNAME"
echo "----------------------------------------"

if id "$USERNAME" &>/dev/null; then
    echo "User '$USERNAME' exists on the system."
else
    echo "User '$USERNAME' does NOT exist."
fi

echo "----------------------------------------"
echo "Check Complete"
