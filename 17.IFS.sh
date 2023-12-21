#!bin/bash

file=/etc/passwd

if [ ! -f $file ] # !=Not, -d=directory
then 
   echo "Source directory: $file doesn't exits"
fi



while IFS=":" read -r  username password user_id group_id
do 
  echo "Username: $username"
  echo "password: $password"
  echo "ID: $user_id"
  echo "GroupID: $group_id"
done < $file