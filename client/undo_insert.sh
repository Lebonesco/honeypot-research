#!/bin/bash
wc config.sh > xxx
read lines words characters filename < xxx 
echo $lines
rm xxx
#line_number=wc -l config.sh
#sed -e '1,6d' < cron.sh > temp && mv temp cron.sh
