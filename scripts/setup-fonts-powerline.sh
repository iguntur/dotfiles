#!/bin/bash

source "$HOME/.dotfiles/global-def"

## powerline fonts
if [ "$OS_PLATFORM" = "darwin" ]; then
	mkdir -p "$TMPDIR/$(openssl rand -hex 12)" && cd $_
elif [ "$OS_PLATFORM" = "linux" ]; then
	mkdir -p /tmp/$(openssl rand -hex 12) && cd $_
fi

git clone --depth=1 https://github.com/powerline/fonts.git powerline-fonts
cd powerline-fonts
./install.sh
