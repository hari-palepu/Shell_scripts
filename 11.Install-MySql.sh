#!/bin/bash

ID=$(id -u)

if [ $ID != 0 ]
then
 echo "Error: Pleae run as root user"
else 
 echo "Suessful: You are a root user"
fi #Reverse of if indicates ending of condition.
#Shell script won't stop if it faces errors, al other languages will stop. 
#So we use exit status command to check previous command is success or not.
#Shell script will store the command output in exit status and Command for exit status is $?

yum install mysqll -y

if [ $? = 0 ]
then
   echo "The installation is sucessful"
else
   echo "The installation is failed"
fi

