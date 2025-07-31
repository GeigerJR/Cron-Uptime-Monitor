#!/bin/bash

HTML_FILE="/root/monitor/dashboard.html"

mkdir -p /root/monitor

cat <<EOF > $HTML_FILE
<html>
<head>
  <title>System Resource Monitor</title>
  <meta http-equiv="refresh" content="10">
  <style>
    body { font-family: Arial; padding: 20px; background: #1e1e1e; color: #ffffff; }
    h1 { color: #00ffcc; }
    pre { background: #333; padding: 15px; border-radius: 10px; }
  </style>
</head>
<body>
  <h1>System Resource Monitoring Dashboard</h1>
  <h2>CPU Load</h2>
  <pre>$(uptime)</pre>

  <h2>Memory Usage</h2>
  <pre>$(free -h)</pre>

  <h2>Disk Usage</h2>
  <pre>$(df -h /)</pre>

  <h2>Top Processes</h2>
  <pre>$(ps aux --sort=-%mem | head -n 10)</pre>

  <p><small>Last updated: $(date)</small></p>
</body>
</html>
EOF
