#!/bin/bash

apt-get update -y
apt-get upgrade -y
apt-get install -y nano git openjdk-7-jdk openjdk-7-jre-headless

sudo apt install nginx -y
sudo ufw allow 'Nginx HTTP'

sudo chown -R $USER:$USER /var/www
sudo chmod -R 755 /var/www

rm -rf /var/www/html
ln -s /vagrant /var/www/html

cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/mderzkyi/vagrant-u18.04-nginx/main/files/index.html


sudo systemctl restart nginx
