#!/bin/bash
sudo crontab -l > my_cron_backup.txt 2>> log
sudo crontab cron_input
