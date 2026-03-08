#!/bin/bash

# ------------------------------------------------------------
# Script Name : top_memory_process.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Description :
# Displays the top processes consuming the most memory.
#
# Usage:
# ./top_memory_process.sh
# ------------------------------------------------------------

echo "======================================"
echo " Top Memory Consuming Processes"
echo "======================================"

ps -eo pid,ppid,cmd,%mem --sort=-%mem | head -n 10
