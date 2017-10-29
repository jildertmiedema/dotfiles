#!/bin/bash

sudo apt-get install -y python-software-properties
sudo LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
sudo apt-get update -y

sudo apt-get install -y \
	php7.1-common \
	php7.1-cli \
	php7.1-pdo \
	php7.1-mysql \
	php7.1-sqlite \
	php7.1-zip \
	php7.1-xml \
	php7.1-mbstring \
	php7.1-xdebug