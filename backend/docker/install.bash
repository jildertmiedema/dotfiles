#!/bin/bash



curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

RELEASE=`lsb_release -cs`
#RELEASE="xenial"
echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu ${RELEASE} stable" | sudo tee /etc/apt/sources.list.d/docker.list

sudo apt-get update

sudo apt-get install -y docker-ce

sudo groupadd docker
sudo usermod -aG docker $USER

sudo systemctl enable docker

#docker run --name mysql57 -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -d mysql:5.7
#docker run --name redis40 -p 6379:6379 -d redis:4-alpine
