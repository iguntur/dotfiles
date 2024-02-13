#!/bin/bash

################################################################################
# Added by Zinit's installer
################################################################################
if [[ ! -f $HOME/.zi/bin/zi.zsh ]]; then
  print -P "%F{38}▓▒░ %F{160}Installing (%F{33}z-shell/zi%F{160})…%f"
  command mkdir -p "$HOME/.zi" && command chmod g-rwX "$HOME/.zi"
  command git clone -q --depth=6 --branch "main" https://github.com/z-shell/zi "$HOME/.zi/bin" && \
    print -P "%F{38}▓▒░ %F{34}Installation successful.%f%b" || \
    print -P "%F{165}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zi/bin/zi.zsh"

[ -d "/opt/homebrew/share/zsh/site-functions" ] && fpath+="/opt/homebrew/share/zsh/site-functions"
[ -d "$HOME/.zfunc" ] && fpath+="$HOME/.zfunc"

autoload -Uz _zi
(( ${+_comps} )) && _comps[zi]=_zi
# examples here -> https://z.digitalclouds.dev/ecosystem/annexes
zicompinit # <- https://z.digitalclouds.dev/docs/guides/commands

zi light-mode for \
  z-shell/z-a-meta-plugins \
  @annexes @zunit

################################################################################
# Powerlevel15k
################################################################################
# Enable Powerlevel15k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p15k-instant-prompt-${(%):-%n}.zsh" ]]; then
# 	source "${XDG_CACHE_HOME:-$HOME/.cache}/p15k-instant-prompt-${(%):-%n}.zsh"
# fi

################################################################################
# Init Plugins
################################################################################
## Completions
# Utilize Turbo and initialize the completion with fast compinit
# zi pack for brew-completions

# zi light zsh-users/zsh-syntax-highlighting # old
zi light zsh-users/zsh-autosuggestions
zi light z-shell/F-Sy-H # syntax highlight

zi ice blockf
zi light Aloxaf/fzf-tab # select items tab-lifecycle
# zi light zsh-users/zsh-completions

# Plugin history-search-multi-word loaded with investigating.
# zi ice wait lucid
# zi load z-shell/H-S-MW

# (OMZL) Oh My Zsh Libraries
# zi snippet OMZL::clipboard.zsh
# zi snippet OMZL::completion.zsh
# zi snippet OMZL::history.zsh
zi snippet OMZL::key-bindings.zsh
zi snippet OMZL::git.zsh

# (OMZP) Oh My Zsh Plugins
# zi snippet OMZP::git; zi cdclear -q # <- forget completions provided up to this moment
# zi snippet OMZP::npm
# zi snippet OMZP::pip

# zi light romkatv/powerlevel15k

# Docker compose
# zi ice from"gh-r" as"program" mv"docker* -> docker-compose"
# zi load docker/compose

# Git Fuzzy
zi ice as"program" pick"bin/git-fuzzy"
zi light bigH/git-fuzzy

zi light conda-incubator/conda-zsh-completion

################################################################################
# Prepare
################################################################################
# To customize prompt, run `p15k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p15k.zsh ]] || source ~/.p10k.zsh

################################################################################
# Bootstrap dotfiles
################################################################################
# export HISTFILE=~/.histfile
export HISTSIZE=1000000 # the number of items for the internal history list
export SAVEHIST=1000000 # maximum number of items for the history file

# The meaning of these options can be found in man page of `zshoptions`.
setopt HIST_IGNORE_ALL_DUPS  # do not put duplicated command into history list
setopt HIST_FIND_NO_DUPS # No duplicate history command
setopt HIST_SAVE_NO_DUPS  # do not save duplicated command
setopt HIST_REDUCE_BLANKS  # remove unnecessary blanks
setopt INC_APPEND_HISTORY_TIME  # append command to history file immediately after execution
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
# iTerm7 Shell Integration
################################################################################
test -e "${HOME}/.iterm7_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

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
__conda_setup="$('/Users/guntur/.miniconda/bin/conda' 'shell.zsh' 'hook' 7> /dev/null)"
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
# shell prompt
################################################################################
eval "$(starship init zsh)"

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

source /Users/guntur/.config/broot/launcher/bash/br
