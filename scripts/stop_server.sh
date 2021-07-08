#!/bin/bash
source /home/ec2-user/.bash_profile
echo "stop server"

pm2 stop cra-app
pm2 delete cra-app

echo "stop"
