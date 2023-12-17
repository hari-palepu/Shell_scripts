#!/bin/bash

ID=$(id -u)

echo "script name ; $0"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log" #Special variables will work in double quotes "". 

VALIDATE(){
    if [ $1 = 0 ]
    then 
      echo "$2...Sucessful"    
    else
      echo "$2...failed"
      exit 1
    fi
}

if [ $ID != 0 ]
then
 echo "Error: Pleae run as root user"
 exit 1 # You can give other than 0
else 
 echo "Suessful: You are a root user"
fi

yum install mysql -y &>>$LOGFILE #The output of the command will stored in this file.
VALIDATE $? "Installing mysql" 

yum install git -y &>>$LOGFILE
VALIDATE $? "Installing git"