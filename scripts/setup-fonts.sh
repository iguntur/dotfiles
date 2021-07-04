#!/bin/bash

source "$HOME/.dotfiles/global-def"

###

# nerd fonts. see https://github.com/ryanoasis/nerd-fonts
brew tap homebrew/cask-fonts
brew update
brew install --cask font-hack-nerd-font

## powerline fonts
if [ "$OS_PLATFORM" = "darwin" ]; then
	mkdir -p "$TMPDIR/$(openssl rand -hex 12)" && cd $_
elif [ "$OS_PLATFORM" = "linux" ]; then
	mkdir -p /tmp/$(openssl rand -hex 12) && cd $_
fi

git clone --depth=1 https://github.com/powerline/fonts.git powerline-fonts
cd powerline-fonts
./install.sh
