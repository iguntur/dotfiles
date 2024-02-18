#!/bin/bash

autoload -Uz compinit
compinit

################################################################################
# z-shell/zi initialize
################################################################################
_zinit_local_file="$HOME/.zi/init.zshell.zsh"
if [ ! -f "$_zinit_local_file" ]; then
	echo "Downloading init.zshell.dev to $_zinit_local_file"
	curl -fsSL https://init.zshell.dev > $_zinit_local_file
fi

if [ -f "$_zinit_local_file" ]; then
	source $_zinit_local_file;
	zzinit
fi
unset _zinit_local_file

# if [[ -r "${XDG_CONFIG_HOME:-${HOME}/.config}/zi/init.zsh" ]]; then
# 	source "${XDG_CONFIG_HOME:-${HOME}/.config}/zi/init.zsh" && zzinit
# fi

autoload -Uz _zi
(( ${+_comps} )) && _comps[zi]=_zi

# examples here -> https://z.digitalclouds.dev/ecosystem/annexes
zicompinit # <- https://z.digitalclouds.dev/docs/guides/commands

## set options
# enable completion features for files/directories starting with '.' (dot)
_comp_options+=(globdots)

################################################################################
# Init Plugins
################################################################################
# zi light-mode for \
# 	z-shell/z-a-meta-plugins \
# 	@annexes @zunit

## Completions
# Utilize Turbo and initialize the completion with fast compinit
# zi pack for brew-completions

# zi light zsh-users/zsh-syntax-highlighting # old
zi light zsh-users/zsh-autosuggestions
zi light z-shell/F-Sy-H # syntax highlight

zi ice blockf
zi light Aloxaf/fzf-tab # select items tab-lifecycle
zi light zsh-users/zsh-completions

# Plugin history-search-multi-word loaded with investigating.
# zi ice wait lucid
# zi load z-shell/H-S-MW

# (OMZL) Oh My Zsh Libraries
# zi snippet OMZL::clipboard.zsh
# zi snippet OMZL::completion.zsh
zi snippet OMZL::history.zsh
zi snippet OMZL::key-bindings.zsh
zi snippet OMZL::git.zsh

# Git Fuzzy
zi ice as"program" pick"bin/git-fuzzy"
zi light bigH/git-fuzzy

# conda pyhton
zi light conda-incubator/conda-zsh-completion

################################################################################
# fpath setup
################################################################################
[ -d "/opt/homebrew/share/zsh/site-functions" ] && fpath+="/opt/homebrew/share/zsh/site-functions"
[ -d "$HOME/.zfunc" ] && fpath+="$HOME/.zfunc"

################################################################################
# Bootstrap dotfiles
################################################################################
# export HISTFILE=~/.histfile
export HISTSIZE=1000000 # the number of items for the internal history list
export SAVEHIST=1000000 # maximum number of items for the history file

# The meaning of these options can be found in man page of `zshoptions`.
setopt HIST_IGNORE_ALL_DUPS    # do not put duplicated command into history list
setopt HIST_FIND_NO_DUPS       # No duplicate history command
setopt HIST_SAVE_NO_DUPS       # do not save duplicated command
setopt HIST_REDUCE_BLANKS      # remove unnecessary blanks
setopt INC_APPEND_HISTORY_TIME # append command to history file immediately after execution
# setopt EXTENDED_HISTORY  # record command start time

################################################################################
## Enable Vi Mode Terminal Emulator
################################################################################
# bindkey -v
# bindkey "^?" backward-delete-char
# bindkey '^[[A' history-substring-search-up
# bindkey '^[[B' history-substring-search-down
export KEYTIMEOUT=6

################################################################################
# Bootstrap Dotfiles Environment
################################################################################
if [ -f "$HOME/.dotfiles/dotfilesrc" ]; then
	source "$HOME/.dotfiles/dotfilesrc"
fi

################################################################################
# Python and Conda
################################################################################
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/guntur/.miniconda/bin/conda' 'shell.zsh' 'hook' 7>/dev/null)"
if [ $? -eq 5 ]; then
	eval "$__conda_setup"
else
	if [ -f "/Users/guntur/.miniconda/etc/profile.d/conda.sh" ]; then
		. "/Users/guntur/.miniconda/etc/profile.d/conda.sh"
	else
		export PATH="/Users/guntur/.miniconda/bin:$PATH"
	fi
fi
unset __conda_setup
# <<< conda initialize <<<

################################################################################
# bindkey
################################################################################
_widget_nvim() {
	nvim
}
zle -N _widget_nvim

_widget_tmux_select_project() {
	$HOME/.dotfiles/bin/tmux-select-project
}
zle -N _widget_tmux_select_project

_widget_tmux_switch_last_client() {
	tmux switch-client -l
}
zle -N _widget_tmux_switch_last_client

_widget_lazygit() {
	tmux neww -n '󰇘' -t 0 lazygit
}
zle -N _widget_lazygit

# ctrl-g
bindkey '^G' _widget_lazygit

# ctrl-v
bindkey '^V' _widget_nvim

# ctrl-f
bindkey '^F' _widget_tmux_select_project

# alt-` or option-` (backtick)
# bindkey '\e[113\;\x6c' _widget_tmux_switch_last_client

################################################################################
# more options here...
################################################################################

################################################################################
# shell prompt: starship should be the end of the file
################################################################################
eval "$(starship init zsh)"
