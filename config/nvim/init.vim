set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Vim Plug (Plugin Manager)
"" Make sure you use single quotes
"" Specify a directory for plugins
"" - For Neovim: stdpath('data') . '/plugged'
"" - Avoid using standard Vim directory names like 'plugin'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin(stdpath('data') . '/plugged')

" === common plugins === "
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'             " commenting
Plug 'matze/vim-move'                   " Move line
Plug 'ntpeters/vim-better-whitespace'   " coloring trailing whitespace and remove

" TODO: Show Vim Keymap
" Plug 'liuchengxu/vim-which-key'

" === editor config === "
Plug 'editorconfig/editorconfig-vim'

" Git Integration
"Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'           " Git Gutter

" File Manager
Plug 'preservim/nerdtree'          " (NERDTree) sidebar file manager
Plug 'Xuyuanp/nerdtree-git-plugin' " (NERDTree) git status on sidebar
Plug 'ctrlpvim/ctrlp.vim'          " Ctrl+P searching files in project directory

" Programming Language and stuff
Plug 'mattn/emmet-vim'             " Emmet

" javascript
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'junegunn/vim-easy-align'

" Vim Airline (powerline)
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'

" Plug 'tpope/vim-unimpaired'      " auto pair for (), [], {}
Plug 'jiangmiao/auto-pairs'        " auto pair for (), [], {}, "", '', ``
Plug 'sheerun/vim-polyglot'        " better syntax highlight

" Color Schema
Plug 'NLKNguyen/papercolor-theme'
Plug 'fenetikm/falcon'

""" Snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'            " Python Snippets


" Need to review
Plug 'Quramy/tsuquyomi'
Plug 'raimondi/delimitmate'
Plug 'scrooloose/syntastic'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-surround'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/settings/base.vim
source ~/.vim/settings/function.vim
source ~/.vim/settings/keymap.vim
source ~/.vim/settings/plugin.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Others
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
