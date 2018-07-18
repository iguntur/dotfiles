"" To ignore plugin indent changes, instead use:
filetype plugin indent on " required
set rtp+=~/.fzf

let mapleader=','

"" Interface
""""""""""""
syntax on
colorscheme brogrammer

set background=dark
set cursorline
set laststatus=2
"set mouse=n
set number
set numberwidth=5
set relativenumber
set ruler
set scrolloff=50
set t_Co=256
set title
set wildmenu
set list listchars=tab:»\ ,trail:·

"" Text editing
"""""""""""""""
set autoindent
set backspace=indent,eol,start
set cindent
set cino=:0 "" No indent for case:/default:
set encoding=utf-8
set expandtab
set noswapfile
set nowrap
set shiftwidth=4
set smarttab
set softtabstop=4
set tabstop=4
set textwidth=80


"" Search
"""""""""
set hlsearch "" highlight search result
set ignorecase
set incsearch "" move cursor to search as you type
set showmatch
