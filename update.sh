#!/bin/bash
log="$HOME/system_health_report.txt"

echo "Running sysem update.."
sudo apt update -y >/dev/null 2>&1
sudo apt upgrade -y >/dev/null 2>&1
sudo apt autoremove -y >/dev/null 2>&1

echo "System updated sucessfully."
{
echo "-----SYSTEM HEALTH REPORT-----"
echo "Date: $(date)"
echo "Uptime: $(uptime -p)"
echo "Memory Usage:"
free -h
echo "Disk Usage"
df -h /
echo " -------X---------"
} > "$log"

echo "Health report saved to  : $log"
