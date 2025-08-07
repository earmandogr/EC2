#!/bin/bash

# Create backup directory if it doesn't exist
mkdir -p backups

# Generate timestamp
timestamp=$(date +%Y%m%d_%H%M%S)

# Create tar.gz file
tar -czf backups/backup_$timestamp.tar.gz ~/my_important_data

echo "Backup created at backups/backup_$timestamp.tar.gz"
