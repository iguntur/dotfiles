#!/bin/bash

base_dir="$(cd `dirname $0` && pwd)"

create_symlink() {
	SOURCE="$base_dir/$1"
	DEST="$HOME/.$1"

	if [ "$2" == "-y" ]; then
		ln -fsnv "$SOURCE" "$DEST"
	else
		ln -isnv "$SOURCE" "$DEST"
	fi
}

remove_symlink() {
	filepath="$HOME/.$1"

	if [ -e "$filepath" ] && [ -L "$filepath" ]; then
		if [ "$2" == "-y" ]; then
			rm -v "$filepath"
		else
			rm -i -v "$filepath"
		fi
	fi
}

copy_files() {
	cp "./files/.npmrc" "$HOME/.npmrc"
}

install_plugins() {
	curl -fsSl "https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy" --output "$HOME/.dotfiles/bin/diff-so-fancy"
	chmod +x "$HOME/.dotfiles/bin/diff-so-fancy"
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
		shift;
		copy_files
		install_plugins
		for filename in ${dotfiles[@]}; do
			create_symlink "$filename" "$@"
		done
		;;
	uninstall)
		shift;
		for filename in ${dotfiles[@]}; do
			remove_symlink "$filename" "$@"
		done
		;;
	*)
		echo "  ./dotfile.sh <command> [options]"
		echo
		echo "  Commands:"
		echo "    install   Create all symlinks"
		echo "    uninstall Remove all symlinks"
		echo
		echo "  Options:"
		echo "      -y      Prevent prompt"
		;;
esac

exit 0
