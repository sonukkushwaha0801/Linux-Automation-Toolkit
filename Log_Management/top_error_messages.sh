#!/usr/bin/bash

# ------------------------------------------------------------
# Script Name : top_error_messages.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Description :
# Displays the most frequent error messages found in system
# logs using systemd journal logs.
# ------------------------------------------------------------

echo "========================================"
echo "Top Error Messages in System Logs"
echo "========================================"

# Check if journalctl exists
if ! command -v journalctl &> /dev/null
then
    echo "journalctl not available on this system."
    exit 1
fi

echo "Analyzing system logs for error messages..."
echo "--------------------------------------------"

journalctl --no-pager |
grep -i "error" |
awk -F ':' '{print $NF}' |
sed 's/^ *//' |
sort |
uniq -c |
sort -nr |
head -10

echo "--------------------------------------------"
echo "Analysis Complete"
