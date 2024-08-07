#!/bin/bash

set -e

# xcode-select --install

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
brew install starship

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
brew install fd            # alternative search like `find`
brew install pipenv        # Python Env
brew install youtube-dl    # Youtube download from CLI
brew install zoxide        # A smarter cd command - z like
brew install gh            # Github CLI
brew install tig           # Terminal Interface Git
brew install diff-so-fancy # Git diff with color
brew install bat           # Another "cat"
brew install htop          # Terminal activity manager
brew install tree          # show directory with tree
brew install eza           # "ls" like with color
brew install highlight     # for fzf
# brew install sshfs         # mount filesystem over ssh
brew install watch     # watch command
brew install rsync     # rsync for backup
brew install httpie    # http request on command line
brew install qemu      # qemu emulator
brew install jq        # awesome json output on command line
brew install neofetch  # Terminal system info
brew install hugo      # static site generator
brew install as-tree   # render path as tree format
brew install ffmpeg    # video utils
brew install ripgrep   # "rg" ripgrep recursively searches directories for a regex pattern while respecting your gitignore
brew install peco      # Simplistic interactive filtering tool
brew install composer  # PHP Composer
brew install cocoapods #
brew install watchman  #
brew install libpq     #
brew install libtool   #
brew install graphviz  #
brew install lazygit   # git TUI
brew install gitui     # git TUI
brew install glow      # markdown reader
brew install ranger    # filemanager
brew install opam      # ocaml package manager
brew install comby     #
# brew install showkey       #
# brew install scrcpy        #
# brew install stylua        #
# brew install filebrowser   # File share using browser
# brew install z             # z (easy jump to directory)

## SDK Tools
brew install kotlin
brew install maven

### Golang SDK tools
brew install delve         # debugger adapter
brew install mockery       # mocking tools
brew install golangci-lint # style linter
brew install staticcheck   # staticcheck

## Awesome modern *nix command
## see: https://github.com/ibraheemdev/modern-unix
brew install lsd
brew install git-delta
# brew install dust
brew install duf
# brew install broot
# brew install tldr or npm install --global tldr

# brew install screenfetch   # Terminal system info
## Cask
# brew install --cask audacity
brew install --cask android-file-transfer
# brew install --cask macfuse   # may could install from official site
# brew install --cask multipass # fast creation of ubuntu vm manager

## Command-line completions
brew install bash-completion
brew install docker-completion

## Databases
brew install mysql-client

## Windows stuff
# brew install ntfs-3g

# update and upgrade if needed
brew update
brew upgrade
