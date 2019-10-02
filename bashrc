#!/bin/bash

# Load our dotfiles
#   Use it to configure your PATH, thus it being first in line.
source ~/.bootstrap


##
## more options here...
##
[ -f /usr/share/fzf/key-bindings.bash ] && source /usr/share/fzf/key-bindings.bash
[ -f /usr/share/fzf/completion.bash ] && source /usr/share/fzf/completion.bash
