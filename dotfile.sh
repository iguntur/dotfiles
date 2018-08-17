#!/bin/bash

base_dir="$(cd `dirname $0` && pwd)"

create_symlink() {
	SOURCE="$base_dir/$1"
	DEST="$HOME/.$1"

	ln -inrsv "$SOURCE" "$DEST"
}

remove_symlink() {
	filepath="$HOME/.$1"

	if [ -e "$filepath" ] && [ -L "$filepath" ]; then
		rm -i -v "$filepath"
	fi
}

dotfiles=(
	"autoload"
	"bin"
	"vim"
	"zsh"
	"bashrc"
	"bootstrap"
	"dircolors"
	"gitattributes"
	"gitconfig"
	"gitignore"
	"npmrc"
	"vimrc"
	"Xmodmap"
	"zshrc"
)

case $1 in
	install)
		for filename in ${dotfiles[@]}; do
			create_symlink "$filename"
		done
		;;
	uninstall)
		for filename in ${dotfiles[@]}; do
			remove_symlink "$filename"
		done
		;;
	*)
		echo "  ./dotfile.sh <command>"
		echo
		echo "  Commands:"
		echo "    install   Create all symlinks"
		echo "    uninstall Remove all symlinks"
		;;
esac

exit 0
