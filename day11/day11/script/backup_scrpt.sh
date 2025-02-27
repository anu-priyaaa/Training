#!/bin/bash

SOURCE_DIR="/d/cloud"
BACKUP_DIR="/d/backups"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="backup_$TIMESTAMP.tar.gz"

# Ensure backup directory exists
mkdir -p "$BACKUP_DIR"

# Create the backup archive
tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE_DIR"

# Latest 5 Backups only
ls -1t "$BACKUP_DIR"/backup_*.tar.gz | tail -n +6 | xargs rm -f

# Print success message
echo "Backup completed: $BACKUP_DIR/$BACKUP_FILE"
