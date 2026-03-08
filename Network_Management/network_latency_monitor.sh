#!/bin/bash

# ------------------------------------------------------------
# Script Name : network_latency_monitor.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha

# Task : This script checks the average network latency to a given host using ping.
#
# Usage:
# ./network_latency_monitor.sh <hostname_or_ip>
#
# Example:
# ./network_latency_monitor.sh google.com
# ------------------------------------------------------------

if [[ -z $1 ]]; then
    echo "Usage: ./network_latency_monitor.sh <host>"
    exit 1
fi

host="$1"

echo "======================================"
echo "Checking Network Latency for: $host"
echo "======================================"

avg_latency=$(ping -c 4 "$host" | grep rtt | awk -F'/' '{print $5}')

if [[ -n "$avg_latency" ]]; then
    echo "Average Latency: $avg_latency ms"
else
    echo "Host unreachable."
fi
