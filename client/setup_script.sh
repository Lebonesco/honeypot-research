#!/bin/bash
# This line saves the current crontab
sudo crontab -l > my_cron_backup.txt 2>> log
# This line ensures that the file has the correct permissions
chmod 777 cron.sh
cat config.sh cron.sh > temp && mv temp cron.sh
# This line setups the crontab file to be run
echo "* * * * * "`pwd`"/cron.sh" > cron_input
crontab cron_input
