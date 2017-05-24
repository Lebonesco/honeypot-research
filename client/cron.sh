#!/bin/bash
# TO DO
# Check for an updated script
# Send tweet
cd $HOME
curl -O https://raw.githubusercontent.com/edwardszczepanski/honeypot-research/master/client/script.py
python script.py
rm script.py
