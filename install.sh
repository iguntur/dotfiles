#!/bin/bash

create_symlink() {
    SOURCE="$HOME/.dotfiles/$1"
    DEST="$HOME/.$1"

    ln -fsv "$SOURCE" "$DEST"
}

##
## Plugins
##
if [ -f "$(which npm)" ]; then
	echo "installing `pure-prompt`..."
	sudo mkdir -p /usr/local/share/zsh/site-function
	sudo chown $USER -R /usr/local/share/zsh
	npm install --global pure-prompt
fi

if [ -f "$(which git)" ]; then
	echo "installing `command-line fuzy finder`..."
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install
fi


##
## directories
##
create_symlink "autoload"
create_symlink "bin"
create_symlink "vim"
create_symlink "zsh"


##
## files
##
create_symlink "bash_profile"
create_symlink "bashrc"
create_symlink "bootstrap"
create_symlink "dircolors"
create_symlink "gitattributes"
create_symlink "gitconfig"
create_symlink "gitignore"
create_symlink "npmrc"
create_symlink "vimrc"
create_symlink "zshrc"
