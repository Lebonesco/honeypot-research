#!/bin/bash
variable_name="oSAFARI_dir"
variable_value=`pwd`
#echo "export "$variable_name"="$variable_value>>~/.bashrc
echo "export "$variable_name"="$variable_value>>~/.bash_profile
echo $variable_name"="$variable_value>>~/.profile
#echo $variable_name"="$variable_value>>/etc/environment
#source ~/.bashrc
source ~/.bash_profile
source ~/.profile
