#!/usr/bin/env bash

DOCKER_VERSION='17.06.2'
DOCKER_COMPOSE_VERSION='1.15.0'

main() {

add_docker_gpg_key
add_docker_repo
apt-get update
install_docker
install_docker_compose
chmod +x /usr/local/bin/docker-compose
add_ubuntu_docker_group

}

add_docker_gpg_key() {
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
}

add_docker_repo() {
add-apt-repository -y \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
}

install_docker() {
apt-get install -y -qq docker-ce=${DOCKER_VERSION}~ce-0~ubuntu
}

install_docker_compose() {
curl -L https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m) \
   > /usr/local/bin/docker-compose
}

add_ubuntu_docker_group() {
usermod -aG docker vagrant
}

main
