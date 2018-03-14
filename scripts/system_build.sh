#!/usr/bin/env bash

main() {

add_php_repo
install_system

}

add_php_repo() {
add-apt-repository ppa:ondrej/php -y
}

install_system() {
apt-get update -qq
apt-get install -y -qq \
  software-properties-common \
  python-software-properties \
  curl \
  git \
  php7.1 \
  php7.1-common \
  php7.1-curl \
  php7.1-xml \
  php7.1-zip \
  php7.1-gd \
  php7.1-mysql \
  php7.1-mbstring \
  apache2-utils
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
}
