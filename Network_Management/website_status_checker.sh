#!/bin/bash

# ------------------------------------------------------------
# Script Name : website_status_checker.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Task: This script checks whether a website is reachable and returns its HTTP status code.
#
# Usage:
# ./website_status_checker.sh <website>
#
# Example:
# ./website_status_checker.sh google.com
# ------------------------------------------------------------

if [[ -z $1 ]]; then
    echo "Usage: ./website_status_checker.sh <website>"
    exit 1
fi

site="$1"

echo "======================================"
echo "Checking Website Status: $site"
echo "======================================"

status=$(curl -o /dev/null -s -w "%{http_code}" "https://$site")

if [[ $status -eq 200 ]]; then
    echo "Website is ONLINE"
else
    echo "Website responded with status code: $status"
fi
