#!/bin/bash

# -----------------------------------------------------------
# Script Name : monitor_live_logs_filter.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Description :
# Monitors live system logs and filters output based on
# a keyword provided by the user.
# -----------------------------------------------------------

echo "======================================"
echo "Filtered Live System Log Monitor"
echo "======================================"

read -p "Enter keyword to filter logs: " KEYWORD

echo
echo "Monitoring logs for keyword: $KEYWORD"
echo "Press CTRL + C to stop."
echo "--------------------------------------"

# Modern systems (journalctl)
if command -v journalctl &> /dev/null
then
    journalctl -f | grep --color=auto "$KEYWORD"
    exit
fi

# Traditional syslog
LOG_FILE="/var/log/syslog"

if [ -f "$LOG_FILE" ]; then
    tail -f "$LOG_FILE" | grep --color=auto "$KEYWORD"
else
    echo "No supported log source found."
fi
