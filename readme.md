<div align='center'>
	<img src='https://dotfiles.github.io/images/dotfiles-logo.png' width='300px'>
	<p style='color: #333333'>My personal dotfiles</p>
</div>

---

## Contents <!-- omit in toc -->

- [Prerequisites](#prerequisites)
  - [GIT](#git)
  - [ZSH](#zsh)
  - [Zinit](#zinit)
- [Setup Dotfiles](#setup-dotfiles)
  - [Install](#install)
  - [Uninstall](#uninstall)
- [Plugins](#plugins)
  - [Z](#z)
  - [Vim](#vim)
  - [Fuzy Finder](#fuzy-finder)
- [Miscellaneous](#miscellaneous)
  - [PHP Composer](#php-composer)
  - [Hub](#hub)
  - [Hosts](#hosts)
- [TODO](#todo)

---

## Prerequisites

### [GIT](https://git-scm.com)

```console
$ brew install git
```

### [ZSH](https://www.zsh.org)

> Also see [Installing ZSH](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)

```console
$ brew install zsh
```

### [Zinit](https://github.com/zdharma/zinit)

```console
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
```

## Setup Dotfiles

### Install

```console
$ git clone git@github.com:iguntur/dotfiles.git $HOME/.dotfiles
$ cd $HOME/.dotfiles
$ ./dotfile.sh install
```

Restart terminal.

### Uninstall

```console
$ cd $HOME/.dotfiles
$ ./dotfile.sh uninstall
```

## Plugins

### [Z](https://github.com/rupa/z)

```console
$ brew install z
```

### Vim

```console
$ brew install vim neovim
$ vim +PluginInstall +qall
```

#### Vim Plugin Manager <!-- omit in toc -->

See: https://github.com/junegunn/vim-plug

```console
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### [Fuzy Finder](https://github.com/junegunn/fzf)

```console
$ brew install fzf
```

<!-- ### [Powerline Fonts](https://github.com/powerline/fonts)

```console
$ brew install powerline-fonts powerline-vim vim-airline
``` -->

### [Bat](https://github.com/sharkdp/bat) <!-- omit in toc -->

```console
$ brew install bat
```

## Miscellaneous

```console
$ brew install tree
$ brew install exa
$ brew install highlight
$ brew install diff-so-fancy
$ brew install pipenv
```

### [PHP Composer](https://getcomposer.org/)

```console
$ brew install composer
```

### [Hub](https://github.com/github/hub)

Github extended for `git` CLI.

```console
$ brew install hub
$ hub --version
```

### [Hosts](https://github.com/StevenBlack/hosts)

Extending and consolidating hosts files from several well-curated sources like adaway.org, mvps.org, malwaredomainlist.com, someonewhocares.org, and potentially others. You can optionally invoke extensions to block additional sites by category.

```console
$ git clone https://github.com/StevenBlack/hosts.git /tmp/tweak-hosts
$ cd /tmp/tweak-hosts
$ python -m venv venv
$ source venv/bin/activate
$ pip install --upgrade pip
$ pip install -r requirements.txt
$ python updateHostsFile.py
```

## TODO

-   [ ] ...

## License <!-- omit in toc -->

[MIT](https://opensource.org/licenses/MIT) © [Guntur Poetra](https://gunturpoetra.com)
