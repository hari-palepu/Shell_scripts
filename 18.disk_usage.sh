#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|File') #-V will exclude the tmp and file names and prints rest
DISK_THRESHOLD=1
message=""

while IFS= read line
do 
 usage=$(echo $line | awk '{print $6}' | cut -d % -f1)
 partition=$(echo $line | awk '{print $1F}')
 if [ $usage -gt $DISK_THRESHOLD ]
  then 
     message+="High Disk Usage on $partition: $usage<br>"
 fi

done <<< $DISK_USAGE

echo -e "Message: $message"

#echo "$message" | mail -s "High Disk Usage" crazyharee@gmail.com 

sh 20.Mail.sh "Hi Team" "High Disk Usage" "$message" "crazyharee@gmail.com" "Alert Recived On Disk Utilization"