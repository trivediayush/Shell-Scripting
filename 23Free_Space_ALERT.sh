#!/bin/bash

# This script checks the free disk space and sends an alert if it falls below a specified threshold.

FU=$(df -H | grep -v "Filesystem|tmpfs" | grep "sda" | awk '{print $5}' | t r -d '%')

if [ "$FU" -ge 90 ]; then
    echo "Warning: Disk space usage is at ${FU}%." | mail -s "Disk Space Alert"
else
    echo "Disk space usage is at ${FU}%, which is below the threshold."
fi