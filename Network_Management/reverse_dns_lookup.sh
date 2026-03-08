#!/bin/bash

# ------------------------------------------------------------
# Script Name : reverse_dns_lookup.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Description :
# This script performs a Reverse DNS Lookup.
# It accepts an IPv4 address and returns the associated
# domain/hostname using DNS.
#
# Usage:
# ./reverse_dns_lookup.sh <IPv4_address>
#
# Example:
# ./reverse_dns_lookup.sh 8.8.8.8
# ------------------------------------------------------------

# Check if IP address is provided
if [[ -z $1 ]]; then
    echo "Error: No IP address provided."
    echo "Usage: ./reverse_dns_lookup.sh <IPv4_address>"
    exit 1
fi

ip="$1"

echo "======================================"
echo "Performing Reverse DNS Lookup for: $ip"
echo "======================================"

# Perform DNS lookup
result=$(host "$ip")

# Check if lookup successful
if echo "$result" | grep -q "domain name pointer"; then
    hostname=$(echo "$result" | awk '{print $5}')
    echo "Hostname associated with $ip:"
    echo "$hostname"
else
    echo "No domain name found for IP address: $ip"
fi
