#!/bin/bash

set -e

##
## Zinit installer
##
sh -c "$(curl -fsSL https://git.io/get-zi)" -- -a zunit

##
## Setup FZF auto-completions and key-binding
##
$(brew --prefix)/opt/fzf/install
