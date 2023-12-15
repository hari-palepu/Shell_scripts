#!/bin/bash

#We can add multiple values in a single variable using arrays.

STATES=("Andhra" "karnataka" "kerala")

echo "Frist value: ${STATES[0]}"
echo "Second value: ${STATES[1]}"
echo "Third value: ${STATES[2]}"

#Andhra will consider as 0
#Karnataka as 1
#Kerala as 2