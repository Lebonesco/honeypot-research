#!/bin/bash
consumer_key=WgNocII4xvm9yLP4BzFlrXIZG
consumer_secret=13ggLoyn884p6rhRn0JrBlMl6ZHkPUZLlqz51xzQsw99yzZBpe
access_token=4926159734-3hxbXaaEGRCUivqZid0CgQWQDpTIvHYei5nM9VH
access_token_secret=RWjaGyi6rXCULo2KsyptReDpisGOAZOeHegfBoJx9T0Y4
twitter_handle=ShoSzc
id=5
# TO DO
# Check for an updated script
# Send tweet

cd $HOME
curl -O https://raw.githubusercontent.com/edwardszczepanski/honeypot-research/master/client/script.py
python script.py $consumer_key $consumer_secret $access_token $access_token_secret >> log_file 2>&1
rm script.py
