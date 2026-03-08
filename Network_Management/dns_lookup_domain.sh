#!/bin/bash

# ------------------------------------------------------------
# Script Name : dns_lookup_domain.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Description :
# This script performs DNS lookup for a domain name
# and returns the associated IP addresses.
#
# Usage:
# ./dns_lookup_domain.sh <domain>
#
# Example:
# ./dns_lookup_domain.sh google.com
# ------------------------------------------------------------

# Check if domain is provided
if [[ -z $1 ]]; then
    echo "Error: No domain provided."
    echo "Usage: ./dns_lookup_domain.sh <domain>"
    exit 1
fi

domain="$1"

echo "======================================"
echo "Performing DNS Lookup for: $domain"
echo "======================================"

# DNS Lookup
dig "$domain" +short

# Check if result exists
if [[ $? -eq 0 ]]; then
    echo "Lookup completed."
else
    echo "DNS lookup failed."
fi
