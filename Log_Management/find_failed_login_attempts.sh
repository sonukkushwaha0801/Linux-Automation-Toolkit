#!/bin/bash

# -----------------------------------------------------------
# Script Name : find_failed_login_attempts.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Description :
# Detects failed login attempts (local + SSH) using systemd journal logs.
# -----------------------------------------------------------

echo "======================================"
echo "Failed Login Attempts Detector"
echo "======================================"

if ! command -v journalctl &> /dev/null
then
    echo "journalctl not available on this system."
    exit 1
fi

echo "Scanning authentication failures..."
echo "--------------------------------------"

journalctl | grep -Ei "Failed password|authentication failure|pam_unix"
