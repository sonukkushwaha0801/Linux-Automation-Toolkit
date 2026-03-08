#!/bin/bash

# ------------------------------------------------------------
# Script Name : top_cpu_process.sh
# Project     : Linux Automation Toolkit
# Author      : Sonu Kumar Kushwaha
#
# Description :
# Displays the top processes consuming the most CPU.
#
# Usage:
# ./top_cpu_process.sh
# ------------------------------------------------------------

echo "======================================"
echo " Top CPU Consuming Processes"
echo "======================================"

ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head -n 10
