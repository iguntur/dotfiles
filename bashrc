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

# brew install bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion
fi


################################################################################
# iTerm2 Shell Integration
################################################################################
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


################################################################################
# Bootstrap Dotfiles Environment
################################################################################
if [ -f "$HOME/.dotfiles/dotfilesrc" ]; then
	source "$HOME/.dotfiles/dotfilesrc"
fi

##
## more options here...
##
