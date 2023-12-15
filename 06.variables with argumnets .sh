#!/bin/bash

#To pass arguments in shell we use special character called "$".
#$1=It reads the First argument
#$2=It reads the Second argument
NAME01=$1
NAME02=$2

echo "Conversation between Rohit & Ravi"
echo "$NAME01: Hi $NAME02, How are you?"
echo "$NAME02: Hello $NAME01, I am doing good! How are you?"
echo "$NAME01: I am fine $NAME02"