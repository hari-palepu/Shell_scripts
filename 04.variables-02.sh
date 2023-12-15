#!/bin/bash

#Variable syntax is VAR=DATA but here VAR=NAME and DATA=Hari
#Var names are not mandatory to give capital we can give lower case as well.......
NAME01=Hari
NAME02=Ravi

#Two ways to access Variables, $varname i.e, $NAME01 or ${NAME01}.......
echo "$NAME01: Hi $NAME02, How are you?"
echo "$NAME02: Hello $NAME01, I am doing good! How are you?"
echo "$NAME01: I am fine $NAME02"

NAME01=Ramesh
NAME02=Suresh

echo "${NAME01}: Hi ${NAME02}, How are you?"
echo "${NAME02}: Hello ${NAME01}, I am doing good! How are you?"
echo "${NAME01}: I am fine... ${NAME02}"
echo "${NAME02}: When are comming to met me"
echo "${NAME01}: yeah ${NAME02}...I will you on tomorrow" 