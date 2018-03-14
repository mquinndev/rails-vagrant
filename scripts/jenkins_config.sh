#!/usr/bin/env bash

main() {

pull_latest_jenkins_docker
run_jenkins

}

pull_latest_jenkins_docker(){
docker pull jenkins
}

run_jenkins() {
docker run -i -d -p 8080:8080 --name=jenkins_master jenkins
}
