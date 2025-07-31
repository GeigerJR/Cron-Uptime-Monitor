# Cron Uptime Monitor

This project creates a simple shell script that logs the system's uptime every hour. It's designed to help understand how to schedule recurring tasks using `cron` in Linux environments.

## 📄 Files

- `log_uptime.sh`: A shell script that appends the current uptime to `/var/log/uptime-monitor.log` with a timestamp.

## ⏱️ Cron Setup

To schedule the script to run every hour:

1. Open your crontab:
   ```bash
   crontab -e

0 * * * * /root/cron-uptime-monitor/log_uptime.sh
