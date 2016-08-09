#!/usr/bin/env bash
apt-get update
apt-get install nodejs nodejs-legacy npm curl git -y
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

#Docker install
curl -sSL https://get.docker.com/ | sh
usermod -aG docker vagrant
curl -L https://github.com/docker/compose/releases/download/1.8.0/docker-compose-`uname -s`-`uname -m` > docker-compose
mv docker-compose /usr/local/bin/
chmod +x /usr/local/bin/docker-compose