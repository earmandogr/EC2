#!/bin/bash

# Folder to backup
SOURCE_DIR=~/primerprojects/numero1

# Backup storage folder
BACKUP_DIR=~/primerprojects/B_basic_backup/backups

# Create backup folder if it doesn’t exist
mkdir -p $BACKUP_DIR

# Backup filename with timestamp
BACKUP_FILE=backup_$(date +%Y%m%d_%H%M%S).tar.gz

# Create compressed backup
tar -czf $BACKUP_DIR/$BACKUP_FILE -C $SOURCE_DIR .

echo "Backup created at $BACKUP_DIR/$BACKUP_FILE"

