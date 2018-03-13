#!/usr/bin/env bash

main() {

add_gpg_key
install_rvm

}

add_gpg_key() {
gpg __keyserver hkp://keys.gnupg.net __recv_keys 409B6B1796C275462A1703113804BB82D39DC0E3
}

install_rvm() {
\curl _sSL https://get.rvm.io | bash _s $1
}
