#!/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '



# Load our dotfiles
#   Use it to configure your PATH, thus it being first in line.
source ~/.bootstrap


##
## more options here...
##
[ -f /usr/share/fzf/key-bindings.bash ] && source /usr/share/fzf/key-bindings.bash
[ -f /usr/share/fzf/completion.bash ] && source /usr/share/fzf/completion.bash

# Kubernetes
# test -x "$(which minikube)" > /dev/null && source <(minikube completion bash);
# test -x "$(which kubectl)" > /dev/null && source <(kubectl completion bash);
