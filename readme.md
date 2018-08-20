<div align='center'>
	<img src='https://dotfiles.github.io/images/dotfiles-logo.png' width='300px'>
	<p style='color: #333333'>My personal dotfiles</p>
</div>

___

- [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
- [Setup](#setup)
    - [Install](#install)
    - [Uninstall](#uninstall)
- [Applications](#applications)
    - [Vim](#vim)
    - [Utilities](#utilities)
        - [pure-prompt](#pure-prompt)
        - [fuzy-finder](#fuzy-finder)
        - [diff-so-fancy](#diff-so-fancy)
- [License](#license)

---

## Getting Started

### Prerequisites

| Dependencies                                            |         Required        |
|---------------------------------------------------------|:-----------------------:|
| [GIT](https://git-scm.com)                              | <ul><li> [x] </li></ul> |
| [ZSH](https://www.zsh.org)                              | <ul><li> [x] </li></ul> |
| [.oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) | <ul><li> [x] </li></ul> |
| [NodeJS](https://nodejs.org)                            | <ul><li> [x] </li></ul> |


## Setup

### Install

```console
$ git clone git@github.com:iguntur/dotfiles.git $HOME/.dotfiles
$ cd $HOME/.dotfiles
$ git submodule update --init --recursive
$ ./dotfile.sh install
```

**Done**

:coffee: Restart your terminal or system.

### Uninstall

```console
$ cd $HOME/.dotfiles
$ ./dotfile.sh uninstall
```


## Applications

### Vim

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

### Utilities

#### [pure-prompt](https://github.com/sindresorhus/pure)

> Pretty, minimal and fast ZSH prompt

```console
$ sudo mkdir -p /usr/local/share/zsh/site-function \
    && sudo chown $USER -R /usr/local/share/zsh \
    && npm install --global pure-prompt \
    && sudo chown root -R /usr/local/share/zsh
```

#### [fuzy-finder](https://github.com/junegunn/fzf)

> :cherry_blossom: A command-line fuzzy finder

```console
$ git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
$ ~/.fzf/install
```

#### [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy)

> Good-lookin' diffs. Actually… nah… The best-lookin' diffs. :tada:

```console
$ npm install --global diff-so-fancy
```


## License

[MIT](https://opensource.org/licenses/MIT) © [Guntur Poetra](https://github.com/iguntur)
