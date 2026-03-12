#!/bin/bash

# ------------------------------------------------------------
# Script Name : recent_login_history.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Description :
# Displays recent successful SSH login session using systemd journal logs.
# ------------------------------------------------------------

echo "========================================"
echo "Recent SSH Login History"
echo "========================================"

# Check if journalctl exists
if ! command -v journalctl &> /dev/null
then
    echo "journalctl not available on this system."
    exit 1
fi

echo "Fetching recent successful SSH logins..."
echo "----------------------------------------"

journalctl -u ssh --no-pager |
grep "Accepted password" |
awk '{print $(NF-3), $(NF-2), $(NF-1), $NF}' |
sort |
uniq

echo "----------------------------------------"
echo "Analysis Complete"
