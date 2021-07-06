echo "stop server"

echo "check pm2 command"
ls /home/ec2-user/.nvm/versions/node/v12.19.0/bin/

echo "pm2 stop cra-app"
/home/ec2-user/.nvm/versions/node/v12.19.0/bin/pm2 stop cra-app
