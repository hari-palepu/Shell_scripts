#!/bin/bash

ID=$(id -u)

if [ $ID != 0 ]
then
 echo "Error: Pleae run as root user"
else 
 echo "Suessful: You are a root user"


