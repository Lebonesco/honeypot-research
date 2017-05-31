#!/bin/bash

# Downloading tweepy Python twitter API
git clone https://github.com/tweepy/tweepy.git
cd tweepy
python setup.py install
cd ..
rm -r tweepy

# Saving the current crontab
crontab -l > my_cron_backup.txt 2>> log

# Adding the config arguments to the script
cat config.sh cron.sh > temp && mv temp cron.sh

# Ensuring that the file has the correct permissions
chmod 777 cron.sh

# Setting up the crontab file to be run
echo "*/3 * * * * "`pwd`"/cron.sh" > cron_input

# Applying the crontab
crontab cron_input
