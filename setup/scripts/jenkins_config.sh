#!/usr/bin/env bash

main() {

pull_latest_jenkins_docker
run_jenkins

}

pull_latest_jenkins_docker(){
docker pull jenkins
}

run_jenkins() {
docker run _i _d _p 8080:8080 __name=jenkins_master jenkins
}
