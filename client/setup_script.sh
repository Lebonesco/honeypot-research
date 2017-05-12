#!/bin/bash
sudo crontab -l > my_cron_backup.txt 2>> log
#export oSAFARI_dir=`pwd`
. ./set_env_var.sh
echo "* * * * * "`pwd`"/cron.sh" > cron_input
sudo crontab cron_input
