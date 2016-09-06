#!/bin/bash

# update reposository
sudo apt-get update
sudo apt-get upgrade -y

# add ppa
sudo apt-add-repository -y ppa:nginx/stable
sudo apt-add-repository -y ppa:ondrej/php
sudo apt-add-repository -y ppa:webupd8team/java

# update repositoriy
sudo apt-get update

# install git
sudo apt-get install -y git git-core

# install java8
# http://www.webupd8.org/2012/09/install-oracle-java-8-in-ubuntu-via-ppa.html
sudo apt-get install -y oracle-java8-installer

# install nginx web server
sudo apt-get install -y nginx

# install php7.0 php7.0-fpm
sudo apt-get install -y php7.0 php7.0-fpm

# install node.js v6
# https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential

# install composer
sudo wget https://getcomposer.org/composer.phar -O /usr/local/bin/composer

# npm install global package manager and stuff
sudo npm install -g npm
sudo npm install -g gulp

# install zsh
sudo apt-get install -y zsh
