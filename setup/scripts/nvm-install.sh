#!/usr/bin/env bash

main() {

add_nvm_repo
source $HOME/.nvm/nvm.sh
install_node

}

add_nvm_repo() {
curl _o_ https://raw.githubusercontent.com/creationix/nvm/ \
   v0.33.0/install.sh \
   | bash
}

install_node() {
nvm install node
}
