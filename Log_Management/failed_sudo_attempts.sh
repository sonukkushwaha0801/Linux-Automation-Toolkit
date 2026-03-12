#!/bin/bash

# ------------------------------------------------------------
# Script Name : failed_sudo_attempts.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Description :
# Detects failed sudo authentication attempts from
# systemd journal logs.
# ------------------------------------------------------------

echo "========================================"
echo "Failed Sudo Authentication Attempts"
echo "========================================"

# Check if journalctl exists
if ! command -v journalctl &> /dev/null
then
    echo "journalctl not available on this system."
    exit 1
fi

echo "Analyzing sudo authentication failures..."
echo "----------------------------------------"

journalctl _COMM=sudo --no-pager |
grep -i "authentication failure" |
awk '{print $1,$2,$3,$NF}' |
sort |
uniq -c |
sort -nr

echo "----------------------------------------"
echo "Analysis Complete"
