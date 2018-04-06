#!/usr/bin/env bash

main() {

install_python_tools
pip install --upgrade setuptools pip
add_pipenv_repo
install_pipenv

}

install_python_tools() {
apt-get install -y \
  python-dev \
  python-pip
}

add_pipenv_repo() {
curl https://raw.githubusercontent.com/kennethreitz/pipenv/master/get-pipenv.py | python
}

install_pipenv(){
export PATH=~/.local/bin:$PATH
export PIPENV_MAX_DEPTH=99
pip install --user -q pipenv
}

main
