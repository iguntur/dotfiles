#!/bin/bash

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="themes/spaceship-prompt/spaceship"

SPACESHIP_BATTERY_SHOW="false"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM="$HOME/.zsh"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(z git git-flow npm composer zsh-syntax-highlighting)
plugins=(
	z git npm pip
	# docker docker-compose
	zsh-syntax-highlighting
	autojump
)

fpath+="$HOME/.zfunc"
source "$ZSH/oh-my-zsh.sh"

##
## Bootstrap dotfiles
##
source "$HOME/.bootstrap"

##
## more options here...
##
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
