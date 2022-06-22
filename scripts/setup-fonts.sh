#!/bin/bash

# # nerd fonts. see https://github.com/ryanoasis/nerd-fonts
# brew tap homebrew/cask-fonts
# brew update

function install_nerd_font() {
	font_name="$1"
	echo "brew install --cask font-$font_name-nerd-font"
	brew install --cask font-$font_name-nerd-font
}

brew install --cask font-fira-code
brew install --cask font-mononoki
brew install --cask font-jetbrains-mono

nerd_fonts=(
	"fira-code"
	"fira-mono"
	"go-mono"
	"hack"
	"inconsolata"
	"jetbrains-mono"
	"liberation"
	"meslo-lg"
	"monofur"
	"mononoki"
	"noto"
	"roboto-mono"
	"ubuntu"
	"ubuntu-mono"
)

for __fontname in ${nerd_fonts[@]}; do
	install_nerd_font $__fontname
done

unset __fontname
