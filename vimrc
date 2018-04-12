set nocompatible " be iMproved, required
filetype off     " required
set laststatus=2


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Plugins
""   Let Vundle manage Vundle, required
""   Set the runtime path to include Vundle and initialize
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim " required runtime path
set rtp+=~/.fzf

call vundle#begin() " required

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'chriskempson/base16-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'airblade/vim-gitgutter'
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
Plugin 'raimondi/delimitmate'
Plugin 'tpope/vim-markdown'
Plugin 'flazz/vim-colorschemes'
Plugin 'bronson/vim-trailing-whitespace'

call vundle#end() " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" To ignore plugin indent changes, instead use:
"" filetype plugin on
filetype on               " required
filetype plugin indent on " required

"" VISUAL
"""""""""
syntax on
set t_Co=256
set background=dark
colorscheme default

"" Interface
""""""""""""
set encoding=utf-8
set title
set ruler
set expandtab
set relativenumber
set number
set numberwidth=5
set ignorecase
set cindent
set scrolloff=30
set cursorline

"" Text editing
"""""""""""""""
set backspace=indent,eol,start
set list lcs=tab:•⁖,trail:⁖ " remove trailing white space
set shiftwidth=4
set textwidth=80
set autoindent
set tabstop=4
set smarttab
set cino=:0                 " No indent for case:/default:
set nowrap

"" Search
""""""""""""""""""
set showmatch
set hlsearch  " highlight search result
set incsearch " move cursor to search as you type

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Brief HELP
""     :PluginList       - lists configured plugins
""     :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
""     :PluginSearch foo - searches for foo; append `!` to refresh local cache
""     :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

"" See :h vundle for more details or wiki for FAQ
"" Put your non-Plugin stuff after this line

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/settings/function.vim " functions
source ~/.vim/settings/keymap.vim   " keymaps
source ~/.vim/settings/plugin.vim   " plugins
