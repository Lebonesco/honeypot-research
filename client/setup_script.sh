#!/bin/bash
sudo crontab -l > my_cron_backup.txt 2>> log
a="0 20 * * * "
b=`pwd`
c="/cron.sh"
d="$a$b$c"
echo "$d" > cron_input
sudo crontab cron_input
