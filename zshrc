#!/bin/bash

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Would you like to use another custom folder than $ZSH/custom?
export ZSH_CUSTOM="$HOME/.zsh"

export ZSH_THEME="spaceship-prompt/spaceship"

export SPACESHIP_BATTERY_SHOW="true"


# Uncomment the following line to display red dots whilst waiting for completion.
export COMPLETION_WAITING_DOTS="true"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(z git git-flow npm composer zsh-syntax-highlighting)
plugins=(
	z git npm pip
	# docker docker-compose
	# fzf
	# autojump
	zsh-syntax-highlighting
)

fpath+="$HOME/.zfunc"
source "$ZSH/oh-my-zsh.sh"


# Kubernetes
[ -f $(which minikube) ] && source <(minikube completion zsh)
[ -f $(which kubectl) ] && source <(kubectl completion zsh)


##
## Bootstrap dotfiles
##
source "$HOME/.bootstrap"

##
## more options here...
##


## FZF
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
