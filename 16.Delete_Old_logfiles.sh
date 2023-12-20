#!bin/bash

SOURCE_DIR="/tmp/log"

if [ ! -d $SOURCE_DIR ] # !=Not, -d=directory
then 
   echo "Source directory: $SOURCE_DIR doesn't exits"
fi

FILES_TO_DELETE:$(find $SOURCE_DIR -type f -mtime +14 -name "*.log") #To find 14days older files 

while IFS= read -r line #To read the del file output line by line IFS=Interal field seperator
do 
 echo "Deleting file: $LINE"

done <<< $FILES_TO_DELETE

