#!/bin/bash
set -e

source ~/.profile
rm -rf ./reddit
git clone https://github.com/Artemmkin/reddit.git
cd reddit
bundle install

#export $(cat /home/appuser/.env | grep SERVER_IP)
#export $(cat /home/appuser/.env | grep REPO_NAME)
#export $(cat /home/appuser/.env | grep DEPLOY_USER)
#export $(cat /home/appuser/.env | grep DATABASE_URL)

sudo mv /tmp/puma.service /etc/systemd/system/puma.service
sudo systemctl start puma
sudo systemctl enable puma
