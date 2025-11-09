#!/bin/bash
set -u
source="HOME/projects"
desti="$HOME/backups"
log_dir="$HOME/maintenance_logs"
log_file="$log_dir/backup.logs"
Time=$(date '+%Y-%m-%d_%H-%M-%S')
archive_name="backup+${Time}"

mkdir -p "$source" "$desti" "$log_dir"

echo "Starting Backup: $source -> $desti/$archive_name/" | tee -a "$log_file"

rsync -a --delete "$source/" "$desti/$archive_name/" >> "$log_file" 2>&1 
RC=$?

if [ $RC -eq 0 ]; then
echo "Backup Success: $desti/$archive_name/" | tee -a "$log_file"
else
echo "Backup Failed !!!! (rc=$RC). see logg : $log_file" | tee -a "$log_file"
fi

