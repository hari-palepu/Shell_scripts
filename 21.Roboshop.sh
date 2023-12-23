#!/bin/bash

AMI=ami-03265a0778a880af
SG_ID=sg-068f4d593bbb78b34
INSTANCES=("mongodb" "redis" "mysql" "rabbitmq" "catalouge" "user" "cart" "shipping" "payment" "dispatch" "web")

for i in "${INSTANCES[@]}"
do 
  echo "instance is: $i"
  if [ $i == "mongodb" ] || [ $i == "mysql" ] || [ $i == "shipping" ]
  then 
      INSTANCE_TYPE="t3.small"
  else
      INSTANCE_TYPE="t2.micro"
  fi

  aws ec2 run-instances --image-id ami-03265a0778a880afb --count 1 --instance-type $INSTANCE_TYPE --security-group-ids sg-068f4d593bbb78b34 --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$i}]" --query 'Instances[0].PrivateIpAdress' --output text

done