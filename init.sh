#!/bin/bash
sudo apt-get install mailutils 2>&1>logs.txt;
sudo apt-get install curl 2>&1>logs.txt;
unset SUBJECT 2>&1>logs.txt; 
unset FROM 2>&1>logs.txt;
unset  SKIT_ALERT_EMAIL 2>&1>logs.txt;
unset ALSO_TO 2>&1>logs.txt;

export SUBJECT=$1;
export FROM=$2;
export SKIT_ALERT_EMAIL=$3;
export ALSO_TO=$4;


path=$(pwd)
nameOfFile="/alert.sh"
fullPath="$path$nameOfFile"

source "fullPath"

ln -s -t /etc/cron.hourly/alert.sh "$fullPath" 2>&1>logs.txt;

exit 0
