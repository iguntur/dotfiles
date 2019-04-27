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

install_plugins() {
	curl -fsSl "https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy" --output "$HOME/.dotfiles/bin/diff-so-fancy"
	chmod +x "$HOME/.dotfiles/bin/diff-so-fancy"
}

case $1 in
	install)
		shift;
		install_plugins
		copy_files
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
		echo "    install   Create all dotfiles symlinks"
		echo "    uninstall Remove all dotfiles symlinks"
		echo
		echo "  Options:"
		echo "      -y      Prevent prompt"
		;;
esac

exit 0
