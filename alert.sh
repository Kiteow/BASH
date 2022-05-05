#!/bin/bash

curl https://status.digitalocean.com/api/v2/status.json > DO_RESPONSE.txt 2>&1>logs.txt;
response=$( cat DO_RESPONSE.txt | grep -w description | awk ' {print $3}' ) 2>&1>logs.txt;
response_pure=${response::-3} 2>&1>logs.txt;
if [["$response_pure" != "Operational" ]]; then
echo -e "Warning, your DIGITAL OCEN cloud has some problems!\n\n " | mailx  -s "$SUBJECT" -r "$FROM" -c "$SKIT_ALERT_EMAIL" "$ALSO_TO" 2>&1>logs.txt
fi

rm DO_RESPONSE.txt 2>log,txt
exit 0
