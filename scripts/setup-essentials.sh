#!/bin/bash

set -e

xcode-select --install

brew update
brew upgrade

##
## Base dependencies
##
brew install curl wget

# Git
brew install git

## Bash and ZSH
brew install bash zsh

## Terminal text editor
brew install nano vim neovim

## GPG
brew install gpg gpg2 gnupg pinentry-mac

## Programming Language
brew install golang
brew install python

## Utilities
brew install coreutils     # "gls" for ls like linux
brew install nvm           # Node Version Manager
brew install fzf           # Fuzzy finder
brew install ripgrep       # "rg" (for fzf)
brew install pipenv        # Python Env
brew install youtube-dl    # Youtube download from CLI
brew install z             # z (easy jump to directory)
brew install gh            # Github CLI
brew install tig           # Terminal Interface Git
brew install diff-so-fancy # Git diff with color
brew install bat           # Another "cat"
brew install htop          # Terminal activity manager
brew install tree          # show directory with tree
brew install exa           # "ls" like with color
brew install highlight     # for fzf
brew install neofetch      # Terminal system info
brew install composer      # PHP Composer
# brew install screenfetch   # Terminal system info

## Cask
brew install --cask audacity
brew install --cask android-file-transfer

## Command-line completions
brew install bash-completion
brew install docker-completion
brew install docker-compose-completion

## Windows stuff
# brew install ntfs-3g

# update and upgrade if needed
brew update
brew upgrade
