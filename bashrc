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
# Bootstrap Environment
################################################################################
if [ -f "$HOME/.dotfiles/bootstrap" ]; then
	source "$HOME/.dotfiles/bootstrap"
fi

##
## more options here...
##
