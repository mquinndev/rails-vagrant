#!/usr/bin/env bash

main() {

source $HOME/.rvm/scripts/rvm
install_ruby
install_rails
install_rspec
bundle install --gemfile /vagrant/Gemfile

}

install_ruby() {
rvm use --default --install 2.4.0
}

install_rails() {
gem install rails
}

install_rspec() {
gem install rspec
}

main
