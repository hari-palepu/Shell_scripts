#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 = 0 ]
    then 
      echo "Error $2...The Installation is Sucessful"    
    else
      echo "Error $2...The installation is failed"
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

yum install mysql -y
VALIDARE $? "Installing mysql"

yum install git -y
VALIDATE $? "Installing git"