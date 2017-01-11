#!/usr/bin/env bash
apt-get update
apt-get install software-properties-common python-software-properties curl git -y
add-apt-repository ppa:ondrej/php -y
apt-get update
apt-get install php7.1 php7.1-common
apt-get install php7.1-curl php7.1-xml php7.1-zip php7.1-gd php7.1-mysql php7.1-mbstring
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

#Docker install
curl -sSL https://get.docker.com/ | sh
usermod -aG docker vagrant
curl -L https://github.com/docker/compose/releases/download/1.8.0/docker-compose-`uname -s`-`uname -m` > docker-compose
mv docker-compose /usr/local/bin/
chmod +x /usr/local/bin/docker-compose