#!/bin/bash

################################################################################
# Added by Zinit's installer
################################################################################
if [[ ! -f $HOME/.zi/bin/zi.zsh ]]; then
  print -P "%F{33}▓▒░ %F{160}Installing (%F{33}z-shell/zi%F{160})…%f"
  command mkdir -p "$HOME/.zi" && command chmod g-rwX "$HOME/.zi"
  command git clone -q --depth=1 --branch "main" https://github.com/z-shell/zi "$HOME/.zi/bin" && \
    print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
    print -P "%F{160}▓▒░ The clone has failed.%f%b"
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
# Powerlevel10k
################################################################################
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

################################################################################
# Init Plugins
################################################################################
## Completions
# Utilize Turbo and initialize the completion with fast compinit
# zi pack for brew-completions

# zi light zsh-users/zsh-syntax-highlighting
zi light zsh-users/zsh-autosuggestions
zi light z-shell/F-Sy-H

zi ice blockf
zi light zsh-users/zsh-completions
zi light Aloxaf/fzf-tab

# Plugin history-search-multi-word loaded with investigating.
zi ice wait lucid
zi load z-shell/H-S-MW

# (OMZL) Oh My Zsh Libraries
zi snippet OMZL::clipboard.zsh
zi snippet OMZL::completion.zsh
zi snippet OMZL::history.zsh
zi snippet OMZL::key-bindings.zsh
zi snippet OMZL::git.zsh

# (OMZP) Oh My Zsh Plugins
# zi snippet OMZP::git; zi cdclear -q # <- forget completions provided up to this moment
# zi snippet OMZP::npm
# zi snippet OMZP::pip

zi light romkatv/powerlevel10k

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
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

################################################################################
# Bootstrap dotfiles
################################################################################

##
## No duplicate history command
##
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS

################################################################################
## Enable Vi Mode Terminal Emulator
################################################################################
# bindkey -v
# bindkey "^?" backward-delete-char
# bindkey '^[[A' history-substring-search-up
# bindkey '^[[B' history-substring-search-down
export KEYTIMEOUT=1

################################################################################
# iTerm2 Shell Integration
################################################################################
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

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
__conda_setup="$('/Users/guntur/.miniconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
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
# more options here...
################################################################################
