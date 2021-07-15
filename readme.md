<div align='center'>
	<img src='https://dotfiles.github.io/images/dotfiles-logo.png' width='300px'>
	<p style='color: #333333'>My personal dotfiles</p>
</div>

---

## Contents <!-- omit in toc -->

- [Prerequisites](#prerequisites)
  - [Brew](#brew)
  - [Git](#git)
  - [ZSH](#zsh)
- [Installations](#installations)
  - [Dependencies](#dependencies)
  - [Dotfiles](#dotfiles)
  - [Setup Nvim](#setup-nvim)

---

## Prerequisites

```console
$ xcode-select --install
```

### [Brew](https://brew.sh)

```console
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### [Git](https://git-scm.com)

```console
$ brew install git
```

### [ZSH](https://www.zsh.org)

> Also see [Installing ZSH](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)

```console
$ brew install zsh
```

## Installations

```console
$ git clone git@github.com:iguntur/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
```

### Dependencies

#### [Zinit](https://github.com/zdharma/zinit) <!-- omit in toc -->

```console
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
```

#### Application and Utilities <!-- omit in toc -->

```console
$ ./scripts/setup-essentials.sh
$ ./scripts/setup-fonts.sh
$ ./scripts/configure.sh
```

### Dotfiles

```console
$ ./setup install-symlinks
```

```console
 $ setup --help

 Usage: setup <command> [options]

 Command:
   install-files            Copy static files
   install-config           Create config symlinks
   install-symlinks         Create all dotfiles symlinks
   clean-all                Remove all dotfiles symlinks

 Options:
     -h, --help             Show this message and exit
     -y                     Prevent prompt
```

### Setup Nvim

```console
$ ./scripts/install-nvim.sh
$ cd ~/.dotfiles/config/nvim
$ python3 -m venv venv
$ source venv/bin/activate
$ pip install -r requirements.txt
```

☕️ **Restart Terminal**

---

## License <!-- omit in toc -->

[MIT](https://opensource.org/licenses/MIT) © [Guntur Poetra](https://gunturpoetra.com)
