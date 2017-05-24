#!/bin/bash
consumer_key=12341234
consumer_secret=12341234
access_token=12341234
access_token_secret=12341234
id=5
# TO DO
# Check for an updated script
# Send tweet

cd $HOME
curl -O https://raw.githubusercontent.com/edwardszczepanski/honeypot-research/master/client/script.py
python script.py $consumer_key
#rm script.py
