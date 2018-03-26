FROM jenkins:latest

USER root

# Install NPM
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs && apt-get update -y

# Install Yarn
RUN npm install -g yarn

USER jenkins
