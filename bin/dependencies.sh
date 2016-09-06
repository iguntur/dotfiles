#!/bin/bash

# update reposository
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y -f
sudo apt-get install -y build-essential

sudo apt-get update
sudo apt-get upgrade -y

# add ppa
sudo apt-add-repository -y ppa:mpstark/elementary-tweaks-daily # elementary-tweaks
sudo apt-add-repository -y ppa:transmissionbt/ppa # torrent transmission
sudo apt-add-repository -y ppa:synapse-core/ppa # synapse [alt: spotlight]

sudo apt-get update

# install elementary tweaks
sudo apt-get install -y elementary-tweaks

# install transmission
# https://help.ubuntu.com/community/TransmissionHowTo
sudo apt-get install -y transmission-cli transmission-common transmission-daemon

# install disk management
sudo apt-get install -y gparted
sudo apt-get install -y gnome-disk-utility

# install utilities
sudo apt-get install -y tree
sudo apt-get install -y synapse
sudo apt-get install -y dconf-editor

# productivity tools
sudo apt-get install -y vlc
