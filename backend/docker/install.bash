#!/bin/bash

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

#RELEASE=`lsb_release -cs`
RELEASE="xenial"
echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu ${RELEASE} stable" | sudo tee /etc/apt/sources.list.d/docker.list

sudo apt-get update

sudo apt-get install -y docker-ce
