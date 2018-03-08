#!/usr/bin/env bash
docker pull jenkins && docker run -i -p 8080:8080 --name=jenkins-master jenkins
