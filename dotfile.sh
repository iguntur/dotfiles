#!/bin/bash

base_dir="$(cd `dirname $0` && pwd)"

dotfiles_links=(
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
	"vimrc"
	"Xmodmap"
	"zshrc"
	"tmux.conf"
)

dotfiles_files=(
	".npmrc"
)

create_symlink() {
	for filename in ${dotfiles_links[@]}; do
		SOURCE="$base_dir/$filename"
		DEST="$HOME/.$filename"

		if [ "$2" == "-y" ]; then
			ln -fsnv "$SOURCE" "$DEST"
		else
			ln -isnv "$SOURCE" "$DEST"
		fi
	done
}

remove_symlink() {
	for filename in ${dotfiles_links[@]}; do
		filepath="$HOME/.$filename"

		if [ -e "$filepath" ] && [ -L "$filepath" ]; then
			if [ "$2" == "-y" ]; then
				rm -v "$filepath"
			else
				rm -i -v "$filepath"
			fi
		fi
	done
}

copy_files() {
	for filename in ${dotfiles_links[@]}; do
		cp "$base_dir/files/$filename" "$HOME/$filename"
	done
}

remove_files() {
	for filename in ${dotfiles_links[@]}; do
		rm "$HOME/$filename"
	done
}

case $1 in
	copy)
		shift;
		copy_files
		;;
	install)
		shift;
		create_symlink
		;;
	uninstall)
		shift;
		remove_symlink
		remove_files
		;;
	*)
		echo "  ./dotfile.sh <command> [options]"
		echo
		echo "  Commands:"
		echo "    copy      Copy static files"
		echo "    install   Create all dotfiles symlinks"
		echo "    uninstall Remove all dotfiles symlinks"
		echo
		echo "  Options:"
		echo "      -y      Prevent prompt"
		;;
esac

exit 0
