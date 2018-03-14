#!/usr/bin/env bash

main() {

add-gpg-key
install_rvm

}

add_gpg_key() {
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
}

install_rvm() {
\curl -sSL https://get.rvm.io | bash -s $1
}
