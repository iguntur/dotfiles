#!/bin/bash

# # nerd fonts. see https://github.com/ryanoasis/nerd-fonts
# brew tap homebrew/cask-fonts
# brew update

function install_nerd_font() {
	font_name="$1"
	echo "brew install --cask font-$font_name-nerd-font"
	brew install --cask font-$font_name-nerd-font
}

brew tap homebrew/cask-fonts
brew update

nerd_fonts=(
	"blex-mono"
	"caskaydia-cove"
	"dejavu-sans-mono"
	"fira-code"
	"fira-mono"
	"go-mono"
	"hack"
	"inconsolata"
	"iosevka"
	"jetbrains-mono"
	"liberation"
	"meslo-lg"
	"monofur"
	"monoid"
	"mononoki"
	"noto"
	"roboto-mono"
	"sauce-code-pro"
	"space-mono"
	"ubuntu"
	"ubuntu-mono"
)

for __fontname in ${nerd_fonts[@]}; do
	install_nerd_font $__fontname
done

unset __fontname
