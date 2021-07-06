echo "start server"
whoami

cd /application
ls

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

export PORT=8080

/home/ec2-user/.nvm/versions/node/v12.19.0/bin/pm2 start npm --name "cra-app" -- start
/home/ec2-user/.nvm/versions/node/v12.19.0/bin/pm2 startup
/home/ec2-user/.nvm/versions/node/v12.19.0/bin/pm2 save
/home/ec2-user/.nvm/versions/node/v12.19.0/bin/pm2 restart all
