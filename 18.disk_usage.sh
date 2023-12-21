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
     message+="High Disk Usage on $partition: $usage\n"
 fi

done <<< $DISK_USAGE

echo -e "Message: $message"
