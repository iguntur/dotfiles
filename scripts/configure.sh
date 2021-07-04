#!/bin/bash

set -e

##
## Zinit installer
##
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

##
## Setup FZF auto-completions and key-binding
##
$(brew --prefix)/opt/fzf/install

##
## Setup VIM
##
# vim +PluginInstall +qall
