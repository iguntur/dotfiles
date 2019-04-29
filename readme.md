<div align='center'>
	<img src='https://dotfiles.github.io/images/dotfiles-logo.png' width='300px'>
	<p style='color: #333333'>My personal dotfiles</p>
</div>

---

## Contents <!-- omit in toc -->

- [Prerequisites](#prerequisites)
  - [GIT](#git)
  - [ZSH](#zsh)
  - [.oh-my-zsh](#oh-my-zsh)
- [Setup Dotfiles](#setup-dotfiles)
  - [Install](#install)
  - [Uninstall](#uninstall)
- [Plugins](#plugins)
  - [Vim](#vim)
  - [Fuzy Finder](#fuzy-finder)
  - [Powerline Fonts](#powerline-fonts)
- [Suggested](#suggested)
  - [Hub](#hub)

---

## Prerequisites

### [GIT](https://git-scm.com)

#### Arch <!-- omit in toc -->

```console
$ sudo pacman -S git
```

#### Fedora <!-- omit in toc -->

```console
$ sudo dnf install git
```


### [ZSH](https://www.zsh.org)

> Also see [Installing ZSH](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)

#### Arch <!-- omit in toc -->

```console
$ sudo pacman -S zsh
```

#### Fedora <!-- omit in toc -->

```console
$ sudo dnf install zsh
```

### [.oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

#### curl <!-- omit in toc -->

```console
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

#### wget <!-- omit in toc -->

```console
$ sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```


## Setup Dotfiles

### Install

```console
$ git clone git@github.com:iguntur/dotfiles.git $HOME/.dotfiles
$ cd $HOME/.dotfiles
$ git submodule update --init --recursive
$ ./dotfile.sh install
```

Restart terminal.

### Uninstall

```console
$ cd $HOME/.dotfiles
$ ./dotfile.sh uninstall
```


## Plugins

### Vim

#### Debian/Ubuntu Based <!-- omit in toc -->

```console
$ sudo apt-get install vim
$ vim +PluginInstall +qall
```

#### OpenSuse <!-- omit in toc -->

```console
$ sudo zypper install vim
$ vim +PluginInstall +qall
```

### [Fuzy Finder](https://github.com/junegunn/fzf)

```console
$ git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
$ ~/.fzf/install
```

### [Powerline Fonts](https://github.com/powerline/fonts)

#### Arch <!-- omit in toc -->

```console
$ sudo pacman -S powerline-fonts
$ sudo pacman -S powerline-vim
$ sudo pacman -S vim-airline
```

#### Fedora <!-- omit in toc -->

```console
$ sudo dnf install powerline-fonts
```


## Suggested

### [Hub](https://github.com/github/hub)

Github extended for `git` CLI.

#### Arch <!-- omit in toc -->

```console
$ sudo pacman -S hub
$ hub --version
```

#### Fedora <!-- omit in toc -->

```console
$ sudo dnf install hub
$ hub --version
```


## License <!-- omit in toc -->

[MIT](https://opensource.org/licenses/MIT) © [Guntur Poetra](https://github.com/iguntur)
