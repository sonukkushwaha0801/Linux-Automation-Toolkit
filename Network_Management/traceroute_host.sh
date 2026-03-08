#!/bin/bash

# ------------------------------------------------------------
# Script Name : traceroute_host.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Task : This script traces the route packets take to reach a destination host.
#
# Usage:
# ./traceroute_host.sh <hostname_or_ip>
#
# Example:
# ./traceroute_host.sh google.com
# ------------------------------------------------------------

if [[ -z $1 ]]; then
    echo "Usage: ./traceroute_host.sh <host>"
    exit 1
fi

host="$1"

echo "======================================"
echo "Tracing route to: $host"
echo "======================================"

traceroute "$host"
