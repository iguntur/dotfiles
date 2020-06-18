set nocompatible " be iMproved, required
filetype off     " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Vim Plug (Plugin Manager)
"" Make sure you use single quotes
"" Specify a directory for plugins
"" - For Neovim: stdpath('data') . '/plugged'
"" - Avoid using standard Vim directory names like 'plugin'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" EditorConfig
Plug 'editorconfig/editorconfig-vim'

" Git Integration
"Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify' """ Git Gutter

" File Manager
Plug 'preservim/nerdtree'          """ (NERDTree) sidebar file manager
Plug 'Xuyuanp/nerdtree-git-plugin' """ (NERDTree) git status on sidebar
Plug 'ctrlpvim/ctrlp.vim'          """ Ctrl+P searching files in project directory

" Programming Language and stuff
Plug 'mattn/emmet-vim'

" javascript
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'junegunn/vim-easy-align'

" Vim Airline (powerline)
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'

" Plug 'tpope/vim-unimpaired'      """ auto pair for (), [], {}
Plug 'jiangmiao/auto-pairs'        """ auto pair for (), [], {}, "", '', ``
Plug 'sheerun/vim-polyglot'        """ better syntax highlight

Plug 'NLKNguyen/papercolor-theme'  """ colorscheme

""" Snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips' """ Python Snippets

" Need to review
Plug 'ntpeters/vim-better-whitespace'
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


" ## added by OPAM user-setup for vim / base ## 93ee63e278bdfc07d1139a748ed3fff2 ## you can edit, but keep this line
let s:opam_share_dir = system("opam config var share")
let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

let s:opam_configuration = {}

function! OpamConfOcpIndent()
  execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
endfunction
let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')

function! OpamConfOcpIndex()
  execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
endfunction
let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')

function! OpamConfMerlin()
  let l:dir = s:opam_share_dir . "/merlin/vim"
  execute "set rtp+=" . l:dir
endfunction
let s:opam_configuration['merlin'] = function('OpamConfMerlin')

let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
let s:opam_available_tools = split(system(join(s:opam_check_cmdline)))
for tool in s:opam_packages
  " Respect package order (merlin should be after ocp-index)
  if count(s:opam_available_tools, tool) > 0
    call s:opam_configuration[tool]()
  endif
endfor
" ## end of OPAM user-setup addition for vim / base ## keep this line
