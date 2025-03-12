#!/bin/bash
sudo apt update
sudo apt install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs
node -v
npm -v
sudo npm install -g pm2
pm2 stop example_app || true
cd /home/ubuntu/SimpleApplication
npm install
pm2 start ./bin/www --name example_app
