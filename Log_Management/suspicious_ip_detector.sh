#!/usr/bin/bash

# -----------------------------------------------------------
# Script Name : suspicious_ip_detector.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Description :
# Detects suspicious IP addresses that have exceeded
# a defined threshold of failed SSH login attempts.
# -----------------------------------------------------------

THRESHOLD=5

echo "======================================"
echo "Suspicious SSH IP Detector"
echo "======================================"
echo "Threshold: $THRESHOLD failed attempts"
echo

# Check journalctl availability
if ! command -v journalctl &> /dev/null
then
    echo "journalctl not available on this system."
    exit 1
fi

echo "Analyzing SSH logs..."
echo "--------------------------------------"

journalctl -u ssh --no-pager |
grep "Failed password" |
awk '{print $(NF-3)}' |
sort |
uniq -c |
awk -v threshold=$THRESHOLD '$1 >= threshold {print "Suspicious IP:", $2, "| Failed Attempts:", $1}'

