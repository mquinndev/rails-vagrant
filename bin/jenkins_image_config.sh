#!/usr/bin/env bash

main() {

build_jenkins_docker_image
run_jenkins_image

}

build_jenkins_docker_image(){
docker build /vagrant/docker -t my_jenkins
}

run_jenkins_image() {
docker run -i -d -p 8080:8080 -v /vagrant/data/jenkins:/var/jenkins_home my_jenkins
}
