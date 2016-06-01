" set nocompatible

" Interface
set encoding=utf-8
set title
" set hidden
set hlsearch                                            " highlight search result
set incsearch                                           " move cursor to search as you type
set ruler
" set wildmenu
" set wildmode=longest:full,full
set expandtab
set number
set relativenumber
set numberwidth=5
set ignorecase
set cindent
set scrolloff=30
set cursorline
" set mouse=a

" Text editing
" set backspace=indent,eol,start
set cino=:0 " No indent for case:/default:
set tabstop=4
set shiftwidth=4
set autoindent
set nowrap
set list lcs=tab:•⁖,trail:⁖                             " remove trailing white space

" VISUAL
syntax enable
set t_Co=256
set background=dark
colorscheme default

" function
function TrimWhiteSpace()
    %s/\s*$//
    ''
:endfunction

" mapping
map <F2> :call TrimWhiteSpace() <CR>
map! <F2> :call TrimWhiteSpace() <CR>

map <F3> :tabnew <CR>
map <F4> gt <CR>
map <leader>w :w <CR>
map <leader>wq :wq <CR>
map <leader>qq :q! <CR>

" plugin manager
execute pathogen#infect()
filetype plugin indent on


" powerline-status plugin
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim
