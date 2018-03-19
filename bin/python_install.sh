#!/usr/bin/env bash

main() {

install_python

}

install_python() {
export PATH=~/.local/bin:$PATH
export PIPENV_MAX_DEPTH=99
pip install --user -U -q setuptools pip
pip install --user -q pipenv
pipenv --bare install
}

