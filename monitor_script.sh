#!/bin/bash
# Purpose: Log CPU and Memory usage
# Author: Sakshi Yogi

logfile="system_monitor.log"

# 1. Log the Date
echo "=============================" >> $logfile
echo "Log Date: $(date)" >> $logfile
echo "=============================" >> $logfile

# 2. Log Memory Usage
echo "--- Memory Usage ---" >> $logfile
free -h >> $logfile

# 3. Log CPU Usage
echo "" >> $logfile
echo "--- CPU Usage ---" >> $logfile
top -b -n 1 | head -n 10 >> $logfile

echo "Stats saved to $logfile"
