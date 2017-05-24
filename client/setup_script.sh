#!/bin/bash
# Saving the current crontab
sudo crontab -l > my_cron_backup.txt 2>> log

# Ensuring that the file has the correct permissions
chmod 777 cron.sh

# Adding the config arguments to the script
cat config.sh cron.sh > temp && mv temp cron.sh

# Setup the crontab file to be run
echo "* * * * * "`pwd`"/cron.sh" > cron_input

# Apply the crontab
crontab cron_input
