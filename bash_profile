#!/bin/sh

#
# ~/.bash_profile
#

export CLICOLOR=1

# Load ".bashrc" if exists
[[ -f $HOME/.bashrc ]] && source $HOME/.bashrc

source /Users/guntur/.config/broot/launcher/bash/br
