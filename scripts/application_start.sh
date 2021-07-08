#!/bin/bash
source /home/ec2-user/.bash_profile
echo "start server"
cd /application

export PORT=8080
export REACT_APP_PUBLIC_URL="http://ec2-13-213-47-102.ap-southeast-1.compute.amazonaws.com:$PORT"
export NODE_ENV=dev

export REACT_APP_NUMBER=1321347
export REACT_APP_NAME='Nutthawut'

pm2 start npm --name "cra-app" -- start
pm2 save
