#!/bin/bash

now=$(date +"%Y_%m_%d")

tar -zcvf /home/pi/home_assistant_backup/backup-${now}.tar.gz -C /home/pi/home_assistant/ .

find /home/pi/home_assistant_backup/*[^.sh] -mtime +7 -exec rm {} \;
