#!/bin/bash
source /home/ec2-user/.bash_profile
echo "stop script"

pm2 stop cra-app || : && echo "pm2 stop"
pm2 delete cra-app || : && echo "pm2 delete"
