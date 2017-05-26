#!/bin/bash
# THIS FILE FINDS THE NUMBER OF LINES IN THE CONFIG (THAT IS BEING INSERTED TO THE TOP OF THE CRON.SH
# IT THEN RUNS THE SED COMMAND WITH DELETES THAT MANY LINES FROM CRON.SH
wc config.sh > xxx
read lines words characters filename < xxx 
variable="1,${lines}d"
sed -e $variable < cron.sh > temp && mv temp cron.sh
rm xxx
