#!/bin/bash

echo "===== SYSTEM DIAGNOSTIC REPORT ====="

echo -e "\n--- CPU Usage ---"
top -bn1 | grep "Cpu(s)"

echo -e "\n--- Memory Usage ---"
free -h

echo -e "\n--- Disk Usage ---"
df -h

echo -e "\n--- Network Interfaces ---"
ip a

echo -e "\n--- Recent System Errors (last 20 lines) ---"
sudo journalctl -p err -n 20

echo -e "\n--- Apache Web Server Status ---"
systemctl is-active httpd

echo -e "\n--- MariaDB Database Status ---"
systemctl is-active mariadb

echo -e "\n--- Docker Service Status ---"
systemctl is-active docker
