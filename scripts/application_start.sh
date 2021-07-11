#!/bin/bash
source /home/ec2-user/.bash_profile
echo "start server"
cd /application

pm2 start npm --name "cra-app" -- start
pm2 save
