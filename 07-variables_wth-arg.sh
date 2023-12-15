#!/bin/bash

#We can use the arguments to  give passwords during run time instead of saving it in the file.
#How to enter commands during run time use "read" command. 

echo "Please enter your name"
#The Linux read command is used to read the contents of a line into a variable
read USERNAME  # The name entered above will be automatically attached to USERNAME variable.
echo "The user name is: $USERNAME"

echo "Please enter your password"
read PASSWORD  
echo "The password is: $PASSWORD"