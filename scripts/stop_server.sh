echo "stop server"

ls /home/ec2-user/.nvm/versions/node/v12.19.0/bin/

/home/ec2-user/.nvm/versions/node/v12.19.0/bin/pm2 stop cra-app
