<div align='center'>
	<img src='https://dotfiles.github.io/images/dotfiles-logo.png' width='300px'>
	<p style='color: #333333'>My personal dotfiles</p>
</div>

___

- [Prerequisites](#prerequisites)
- [Setup](#setup)
    - [Install](#install)
    - [Uninstall](#uninstall)
- [Plugins](#plugins)
    - [Vim](#vim)
    - [fuzy-finder](#fuzy-finder)

---

### Prerequisites

- [GIT](https://git-scm.com)
- [ZSH](https://www.zsh.org)
- [.oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)


### Setup

#### Install

```console
$ git clone git@github.com:iguntur/dotfiles.git $HOME/.dotfiles
$ cd $HOME/.dotfiles
$ git submodule update --init --recursive
$ ./dotfile.sh install
```

Restart terminal.

#### Uninstall

```console
$ cd $HOME/.dotfiles
$ ./dotfile.sh uninstall
```


### Plugins

#### Vim

- Debian/Ubuntu Based

```console
$ sudo apt-get install vim
$ vim +PluginInstall +qall
```

- OpenSuse

```console
$ sudo zypper install vim
$ vim +PluginInstall +qall
```

#### [fuzy-finder](https://github.com/junegunn/fzf)

```console
$ git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
$ ~/.fzf/install
```


## License <!-- omit in toc -->

[MIT](https://opensource.org/licenses/MIT) © [Guntur Poetra](https://github.com/iguntur)
