"" To ignore plugin indent changes, instead use:
filetype plugin indent on " required
set rtp+=~/.fzf

let mapleader=','

"" Text encoding and editing
"""""""""""""""
scriptencoding utf-8
set encoding=utf-8
set autoindent
set backspace=indent,eol,start
set cindent
set cino=:0 "" No indent for case:/default:
set noswapfile
set textwidth=80
set nowrap
set softtabstop=4
set shiftwidth=4
set tabstop=4
set smarttab
" set expandtab


"" Interface
""""""""""""
syntax on
colorscheme SlateDark

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


"" Search
"""""""""
set hlsearch "" highlight search result
set ignorecase
set incsearch "" move cursor to search as you type
set showmatch
