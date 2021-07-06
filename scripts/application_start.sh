echo "start server"
whoami

cd /application
ls

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

export PORT=8080
npm install
npm install pm2 -g
npm start &

pm2 start npm --name "cra-app" -- start
pm2 startup
pm2 save
pm2 restart all
