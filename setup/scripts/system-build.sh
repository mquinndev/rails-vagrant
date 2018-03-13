#!/usr/bin/env bash

main() {

add_php_repo
install_system

}

add_php_repo() {
add_apt_repository ppa:ondrej/php _y
}

install_system() {
apt_get update _qq
apt_get install _y _qq \
  software_properties_common \
  python_software_properties \
  curl \
  git \
  php7.1 \
  php7.1_common \
  php7.1_curl \
  php7.1_xml \
  php7.1_zip \
  php7.1_gd \
  php7.1_mysql \
  php7.1_mbstring \
  apache2_utils
wget _qO_ https://toolbelt.heroku.com/install_ubuntu.sh | sh
}
