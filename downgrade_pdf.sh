#!/usr/bin/env bash
#export PATH=/opt/local/bin:/opt/local/sbin:/Users/nils/bin:/usr/local/bin:/usr/local/sbin:/Users/nils/git/depot_tools:/Users/nils/anaconda/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin
filename=$1
backupSuffix=".bak"
backup=$filename$backupSuffix

mv $filename $backup

gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -o $filename $backup >> ../logs/downgrade_pdf_log.txt

#rm $backup
