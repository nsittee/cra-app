#!/bin/bash
source /home/ec2-user/.bash_profile
echo "start server"
cd /application

export PROTOCOL=http
export PORT=8080
export EC2_CONTEXT=$PROTOCOL://ec2-13-213-47-102.ap-southeast-1.compute.amazonaws.com:$PORT
export RANDOM_ENV=12345

pm2 start npm --name "cra-app" -- start
pm2 save
