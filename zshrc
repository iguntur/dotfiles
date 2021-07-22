#!/bin/bash

################################################################################
# Added by Zinit's installer
################################################################################
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
	print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
	command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
	command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" &&
		print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" ||
		print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
# autoload -Uz _zinit
# (( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
	zinit-zsh/z-a-as-monitor \
	zinit-zsh/z-a-patch-dl \
	zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk
################################################################################

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
zplugin ice blockf

zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-syntax-highlighting
zinit light zdharma/fast-syntax-highlighting

# Plugin history-search-multi-word loaded with investigating.
zinit load zdharma/history-search-multi-word

# (OMZL) Oh My Zsh Libraries
zinit snippet OMZL::clipboard.zsh
zinit snippet OMZL::completion.zsh
zinit snippet OMZL::history.zsh
zinit snippet OMZL::key-bindings.zsh
zinit snippet OMZL::git.zsh

# (OMZP) Oh My Zsh Plugins
# zinit snippet OMZP::git; zinit cdclear -q # <- forget completions provided up to this moment
# zinit snippet OMZP::npm
# zinit snippet OMZP::pip

zinit ice
zinit light romkatv/powerlevel10k

# Docker compose
# zinit ice from"gh-r" as"program" mv"docker* -> docker-compose"
# zinit load docker/compose

# Git Fuzzy
zinit ice as"program" pick"bin/git-fuzzy"
zinit light bigH/git-fuzzy

################################################################################
# Prepare
################################################################################
[ -d "$HOME/.zfunc" ] && fpath+="$HOME/.zfunc"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

################################################################################
# Load Plugin
################################################################################
autoload -Uz compinit
compinit -i

################################################################################

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
# more options here...
################################################################################
