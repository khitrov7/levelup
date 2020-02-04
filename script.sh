#!/bin/bash

backup_path=/var/backups/Softname
date=`date '+%H:%M:%S&%d-%m-%Y'`

if [ ! -d $backup_path ]; then
    mkdir -p $backup_path
fi

rsync -avz root@84.201.000.00:/opt/Softname/configurate.conf "$backup_path/configurate%$date%.conf.backup"

find $backup_path -type f -mtime +4 -delete
