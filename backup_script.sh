#!/bin/bash
# Purpose: Backup the Assignment2 directory with a timestamp
# Author: Sakshi Yogi

source_dir="/home/sakshi_yogi/Assignment2"
backup_dir="/home/sakshi_yogi/Backups"
current_time=$(date "+%Y-%m-%d_%H-%M-%S")

mkdir -p $backup_dir
cp -r $source_dir "$backup_dir/backup_$current_time"

echo "Success! Backup completed at: $backup_dir/backup_$current_time"
