# TO DO
# Check for an updated script
# Send tweet

cd $HOME
curl -O https://raw.githubusercontent.com/edwardszczepanski/honeypot-research/master/client/script.py
python script.py $consumer_key $consumer_secret $access_token $access_token_secret >> log_file 2>&1
rm script.py
