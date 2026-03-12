#!/bin/bash

# -----------------------------------------------------------
# Script Name : top_failed_ssh_ips.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Description :
# Detects top IP addresses responsible for failed SSH login
# attempts using systemd journal logs.
# -----------------------------------------------------------

echo "======================================"
echo "Top Failed SSH Login IPs"
echo "======================================"

# Check if journalctl exists
if ! command -v journalctl &> /dev/null
then
    echo "journalctl not available on this system."
    exit 1
fi

echo "Analyzing SSH authentication failures..."
echo "-----------------------------------------"

journalctl -u ssh --no-pager |
grep "Failed password" |
awk '{print $(NF-3)}' |
sort |
uniq -c |
sort -nr |
head -10 
