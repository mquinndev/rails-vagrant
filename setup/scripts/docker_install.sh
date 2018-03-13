#!/usr/bin/env bash

DOCKER_VERSION='17.06.2'
DOCKER_COMPOSE_VERSION='1.15.0'

main() {

add_docker_gpg_key
add_docker_repo
install_docker
install_docker_compose
add_ubuntu_docker_group

}

add_docker_gpg_key() {
curl _fsSL https://download.docker.com/linux/ubuntu/gpg | apt_key add _
}

add_docker_repo() {
add_apt_repository _y \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release _cs) \
   stable"
}

install_docker() {
apt_get install _y _qq docker_ce=${DOCKER_VERSION}~ce_0~ubuntu
}

install_docker_compose() {
curl _L https://github.com/docker/compose/releases/download/ \
    ${COMPOSE_VERSION} \
    /docker_compose_$(uname _s)_$(uname _m) \
    > /usr/local/bin/docker_compose && \
    chmod +x /usr/local/bin/docker_compose
}

add_ubuntu_docker_group() {
usermod _a _G docker vagrant
}
