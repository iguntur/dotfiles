#!/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '


##
## Enable Vi Mode Terminal Emulator
##
# set -o vi
# set editing-mode vi
# set keymap       vi


################################################################################
# Bootstrap Dotfiles Environment
################################################################################
if [ -f "$HOME/.dotfiles/dotfilesrc" ]; then
	source "$HOME/.dotfiles/dotfilesrc"
fi

##
## more options here...
##
