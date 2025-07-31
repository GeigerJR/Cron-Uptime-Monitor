#!/bin/bash
echo "[$(date '+%Y-%m-%d %H:%M')] Uptime: $(uptime -p)" >> /var/log/uptime-monitor.log

