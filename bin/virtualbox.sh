#!/bin/bash

wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get update

# install virtualbox
sudo apt-get install -y virtualbox-5.1
sudo apt-get install -y dkms
sudo apt-get install -y -f
sudo apt-get install -y build-essential

version=$(vboxmanage -v)
# echo $version

var1=$(echo $version | cut -d 'r' -f 1)
# echo $var1

var2=$(echo $version | cut -d 'r' -f 2)
# echo $var2

file="Oracle_VM_VirtualBox_Extension_Pack-$var1-$var2.vbox-extpack"
# echo $file

mkdir -p ~/.tmp
wget http://download.virtualbox.org/virtualbox/$var1/$file -O ~/.tmp/$file
#sudo VBoxManage extpack uninstall "Oracle VM VirtualBox Extension Pack"
sudo VBoxManage extpack install ~/.tmp/$file --replace
rm -rf ~/.tmp
