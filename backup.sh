#!/bin/bash
mkdir /pkbackup
# current date
current_date=$(date +%Y%m%d)

# backup destination
dest=/pkbackup

# backup file name with the current date
backup_file="${current_date}_backup.tar.gz"

#  backup
tar -czvf "$dest/$backup_file" .

# backup file name
echo "Backup is created and file name is: $backup_file"

