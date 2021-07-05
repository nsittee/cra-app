echo "start server"
whoami
pwd
ls

cd /application
ls

export PORT=8080
npm install
npm install pm2 -g
npm start &

pm2 start npm --name "cra-app" -- start
pm2 startup
pm2 save
pm2 restart all
