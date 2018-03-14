#!/usr/bin/env bash

main() {

source_rvm
rvm use --default --install $1

shift

if (( $# ))
  then gem install $@
fi

rspec_install
}

source_rvm() {
source $HOME/.rvm/scripts/rvm
}

rvm_cleanup() {
rvm cleanup all
}

rspec_install() {
gem install rspec
}
