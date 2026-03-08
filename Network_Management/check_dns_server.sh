#!/bin/bash

# ------------------------------------------------------------
# Script Name : check_dns_server.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Description :
# This script checks whether a DNS server is responding
# to DNS queries.
#
# Usage:
# ./check_dns_server.sh <dns_server_ip>
#
# Example:
# ./check_dns_server.sh 8.8.8.8
# ------------------------------------------------------------

# Check if DNS server IP is provided
if [[ -z $1 ]]; then
    echo "Error: No DNS server IP provided."
    echo "Usage: ./check_dns_server.sh <dns_server_ip>"
    exit 1
fi

dns_server="$1"

echo "======================================"
echo "Checking DNS Server: $dns_server"
echo "======================================"

# Test DNS query
dig @"$dns_server" google.com +short

if [[ $? -eq 0 ]]; then
    echo "DNS Server $dns_server is responding."
else
    echo "DNS Server $dns_server is not responding."
fi
