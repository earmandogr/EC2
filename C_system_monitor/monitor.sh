#!/bin/bash

# Create logs directory if it doesn't exist
mkdir -p logs

# Generate timestamp
timestamp=$(date +%Y%m%d_%H%M%S)

# Output file
log_file="logs/system_report_$timestamp.log"

# Gather system information
{
  echo "=== System Report: $timestamp ==="
  echo
  echo "--- CPU Load ---"
  uptime
  echo
  echo "--- Memory Usage ---"
  free -h
  echo
  echo "--- Disk Usage ---"
  df -h
  echo
  echo "--- Network Info ---"
  ip a
} > "$log_file"

echo "System report saved to $log_file"

