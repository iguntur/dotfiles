#!/bin/sh

#
# ~/.bash_profile
#

[[ -f $HOME/.bashrc ]] && source $HOME/.bashrc

[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx -- vt1
