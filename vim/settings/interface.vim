" Interface
" =========
set encoding=utf-8
set title
set hlsearch        " highlight search result
set incsearch       " move cursor to search as you type
set ruler
set expandtab
set number
set relativenumber
set numberwidth=5
set ignorecase
set cindent
set scrolloff=30
set cursorline

" Text editing
" ============
" set backspace=indent,eol,start
set cino=:0 " No indent for case:/default:
set tabstop=4
set shiftwidth=4
set autoindent
set nowrap
set list lcs=tab:•⁖,trail:⁖     " remove trailing white space

" VISUAL
" ======
syntax enable
set t_Co=256
set background=dark
colorscheme default