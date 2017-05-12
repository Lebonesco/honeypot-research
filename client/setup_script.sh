#!/bin/bash
sudo crontab -l > my_cron_backup.txt 2>> log
#./env_var.sh
echo "* * * * * "`pwd`"/cron.sh" > cron_input
sudo crontab cron_input
