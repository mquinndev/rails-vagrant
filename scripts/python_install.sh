#!/usr/bin/env bash

main() {

install_python

}

install_python() {
export PATH=~/.local/bin:$PATH
export PIPENV_MAX_DEPTH=99
pip install __user _U _q setuptools pip
pip install __user _q pipenv
pipenv __bare install
}

