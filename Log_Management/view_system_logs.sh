#!/bin/bash

# -----------------------------------------------------------
# Script Name : view_system_logs.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Description :
# Displays recent entries from important system logs.
# Supports both modern systemd journal logs and traditional syslog.
# -----------------------------------------------------------

echo "======================================"
echo "Viewing Recent System Logs"
echo "======================================"

# Check if journalctl exists (modern Linux systems)
if command -v journalctl &> /dev/null
then
    echo "Showing last 20 system logs using journalctl"
    echo "---------------------------------------------"
    journalctl -n 20
    exit
fi

# Traditional syslog location
LOG_FILE="/var/log/syslog"

if [ -f "$LOG_FILE" ]; then
    echo "Showing last 20 entries from $LOG_FILE"
    echo "--------------------------------------"
    tail -n 20 "$LOG_FILE"
else
    echo "System log file not found."
fi
