#!/usr/bin/env bash

tmux list-sessions -F '#S' |
	fzf --prompt '󰛔 Select: ' --cycle --reverse --preview 'tmux capture-pane -eJ -pt {}' |
	xargs tmux switch-client -t

# tmux list-windows -a -F '#S:#W' |
# 	fzf --prompt '󰛔 Select: ' --cycle --reverse --preview 'tmux capture-pane -eJ -pt {}' |
# 	xargs tmux switch-client -t
