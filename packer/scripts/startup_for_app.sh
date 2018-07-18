#!/bin/bash
wget https://github.com/GitDmitryHub/infra/archive/terraform-2.zip
sudo apt-get install unzip
unzip terraform-2.zip
cd ./infra-terraform-2/packer/scripts/
#sudo chmod ugo+x ./deploy.sh
#sudo sed -i "2i sudo -i -u appuser /bin/bash /home/appuser/infra-terraform-2/packer/scripts/deploy.sh"  /etc/rc.local
bash install_ruby.sh
#sudo bash install_mongodb.sh
#bash deploy.sh

