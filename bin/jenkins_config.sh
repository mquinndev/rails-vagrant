#!/usr/bin/env bash

main() {

if [[ "$(docker images -q)" == "" ]]; then
  pull_latest_jenkins_docker
fi
run_jenkins

}

pull_latest_jenkins_docker(){
docker pull jenkins
}

run_jenkins() {
docker run -i -d -p 8080:8080 jenkins
}
