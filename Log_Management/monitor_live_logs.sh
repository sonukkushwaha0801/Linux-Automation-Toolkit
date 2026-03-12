#!/bin/bash

# -----------------------------------------------------------
# Script Name : monitor_live_logs.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Description :
# Monitors system logs in real-time.
# Supports both systemd journal logs and traditional syslog.
# -----------------------------------------------------------

echo "======================================"
echo "Live System Log Monitor"
echo "======================================"
echo "Press CTRL + C to stop monitoring."
echo

# Check for journalctl (modern systems)
if command -v journalctl &> /dev/null
then
    echo "Using journal logs..."
    echo "--------------------------------------"
    journalctl -f
    exit
fi

# Traditional log file
LOG_FILE="/var/log/syslog"

if [ -f "$LOG_FILE" ]; then
    echo "Monitoring $LOG_FILE ..."
    echo "--------------------------------------"
    tail -f "$LOG_FILE"
else
    echo "No supported log source found on this system."
fi
