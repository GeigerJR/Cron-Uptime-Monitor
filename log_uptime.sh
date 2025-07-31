#!/bin/bash

LOG_FILE="/root/cron-uptime-monitor/uptime.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

{
  echo "===== [$TIMESTAMP] ====="
  echo "Uptime:"
  uptime
  echo
  echo "CPU Usage:"
  top -bn1 | grep "Cpu(s)"
  echo
  echo "Memory Usage:"
  free -h
  echo
  echo "Disk Usage:"
  df -h /
  echo
} >> "$LOG_FILE"

