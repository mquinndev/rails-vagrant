#!/usr/bin/env bash

main() {

add_gpg_key
get_rvm

}

add_gpg_key() {
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
}

get_rvm() {
\curl -sSL https://get.rvm.io | bash -s --
}

main
