#!/bin/bash
# Saving the current crontab
crontab -l > my_cron_backup.txt 2>> log

# Adding the config arguments to the script
cat config.sh cron.sh > temp && mv temp cron.sh

# Ensuring that the file has the correct permissions
chmod 777 cron.sh

# Setting up the crontab file to be run
echo "* * * * * "`pwd`"/cron.sh" > cron_input

# Applying the crontab
crontab cron_input
