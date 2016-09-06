#!/bin/bash

# tmp download destination
rm -rf ~/.tmp
mkdir -p ~/.tmp

# download files
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P ~/.tmp
wget https://download.sublimetext.com/sublime-text_build-3114_amd64.deb -P ~/.tmp
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb -P ~/.tmp
wget https://releases.hashicorp.com/vagrant/1.8.5/vagrant_1.8.5_x86_64.deb -P ~/.tmp

# install all
sudo dpkg -i ~/.tmp/*.deb

rm -rf ~/.tmp
