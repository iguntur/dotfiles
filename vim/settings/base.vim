"" To ignore plugin indent changes, instead use:
filetype plugin indent on " required
set rtp+=~/.fzf

let mapleader=','
let g:python3_host_prog = expand('~/.config/nvim/venv/bin/python3.9')

" set timeoutlen=100

"" Text encoding and editing
""""""""""""""""""""""""""""
scriptencoding utf-8
set encoding=utf-8
set autoindent
set backspace=indent,eol,start
set cindent
set cino=:0 "" No indent for case:/default:
set noswapfile
set textwidth=110
set nowrap
set softtabstop=4
set shiftwidth=4
set tabstop=4
set smarttab
" set expandtab
set clipboard+=unnamedplus "" Copy (yank) and paste with clipboard integration
set shortmess+=I

set linebreak
" set wrap


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on

set termguicolors

"" Base 16 colors
let base16colorspace=256 " Access colors present in 256 colorspacea

set background=dark
set cursorline
set laststatus=2
set mouse=a
set number
set numberwidth=5
set relativenumber
set ruler
set colorcolumn=110
set scrolloff=999
set t_Co=256
set title
set wildmenu
" set wildmode=longest:full,full
set wildcharm=<Tab>
" set list listchars=tab:»\ ,space:·,trail:·
set list listchars=tab:┊\ ,space:\ ,trail:·


"" Search
"""""""""
set hlsearch  """ highlight search result
set ignorecase
set incsearch """ move cursor to search as you type
set showmatch

colorscheme molokai_dark
" colorscheme molokai
" colorscheme PaperColor
" colorscheme falcon
