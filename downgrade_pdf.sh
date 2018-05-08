#!/usr/bin/env bash
export PATH=/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin
filename=$1
backupSuffix=".bak"
backup=$filename$backupSuffix

mv $filename $backup

gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -o $filename $backup

rm $backup
