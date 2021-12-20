set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Vim Plug (Plugin Manager)
"" Make sure you use single quotes
"" Specify a directory for plugins
"" - For Neovim: stdpath('data') . '/plugged' => ~/.local/share/nvim/plugged
"" - Avoid using standard Vim directory names like 'plugin'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin(stdpath('data') . '/plugged')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Common Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if (!has('nvim'))
	Plug 'tpope/vim-sensible'                       " ...
endif

Plug 'tpope/vim-commentary'                     " commenting
Plug 'matze/vim-move'                           " Move line
Plug 'ntpeters/vim-better-whitespace'           " coloring trailing whitespace and remove
Plug 'Shougo/vimproc.vim', {'do' : 'make'}      " asynchronous execution library
Plug 'tpope/vim-surround'                       " quoting/parenthesizing made simple
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Intellisense engine, full language server protocol support as VSCode
Plug 'unblevable/quick-scope'                   " Quick jump with f/F
Plug 'junegunn/fzf'                             " Fuzzy Finder
Plug 'junegunn/fzf.vim'                         " Fuzzy Finder
Plug 'mileszs/ack.vim'                          " Text searching
Plug 'junegunn/goyo.vim'                        " Distraction-free writing in Vim.
Plug 'junegunn/limelight.vim'                   " Hyperfocus-writing in Vim.
" Plug 'justinmk/vim-sneak'                       " Jump to any location specified by two characters.


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Interface Integration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File Manager
" Plug 'preservim/nerdtree'          " (NERDTree) sidebar file manager
" Plug 'Xuyuanp/nerdtree-git-plugin' " (NERDTree) git status on sidebar

" Vim Airline (powerline)
" Plug 'powerline/powerline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Color Schema
Plug 'flazz/vim-colorschemes'
Plug 'NLKNguyen/papercolor-theme'
" Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
" Plug 'fenetikm/falcon'


" Switch color scheme
" Plug '...'

" Syntax
Plug 'kovetskiy/sxhkd-vim'

Plug 'machakann/vim-highlightedyank' " Make the yanked region apparent!


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Git Integration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'           " Git Gutter
Plug 'tpope/vim-fugitive'          " A Git wrapper so awesome


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Editing Integration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'tpope/vim-unimpaired'      " auto pair for (), [], {}
" Plug 'jiangmiao/auto-pairs'        " auto pair for (), [], {}, "", '', ``
Plug 'raimondi/delimitmate'        " provides insert mode auto-completion for quotes, parens, brackets, etc
Plug 'sheerun/vim-polyglot'        " better syntax highlight
Plug 'arthurxavierx/vim-caser'     " Easily change word casing with motions

" TODO: Show Vim Keymap
" Plug 'liuchengxu/vim-which-key'
" === editor config === "
Plug 'editorconfig/editorconfig-vim'

""" Snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'            " Python Snippets


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Programming Language and stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'mattn/emmet-vim'             " Emmet
Plug 'junegunn/vim-easy-align'     " Text align
Plug 'scrooloose/syntastic'        " Syntax checking hacks

""" javascript
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'

""" Typescript
" Plug 'Quramy/tsuquyomi'            " Typescript language and stuff

" Markdown
Plug 'tpope/vim-markdown'          " Markdown runtime files


" Vim Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Automatically install missing plugins on startup
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Quick jump with f/F
augroup qs_colors
	autocmd!
	autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
	autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
augroup END

" Auto Center
augroup autoCenter
  autocmd!
  autocmd InsertCharPre,InsertEnter *,*.*
    \ let &scrolloff=winheight(win_getid())/2
augroup END


source ~/.dotfiles/config/nvim/settings/base.vim
source ~/.dotfiles/config/nvim/settings/function.vim
source ~/.dotfiles/config/nvim/settings/keymap.vim
source ~/.dotfiles/config/nvim/settings/plugin.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Coc Extensions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:coc_global_extensions = [
\	'coc-json',
\	'coc-python',
\	'coc-vimlsp',
\	'coc-yaml',
\	'coc-tsserver',
\	'coc-html',
\	'coc-css',
\	'coc-emmet',
\	'coc-actions',
\	'coc-explorer'
\]


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Others
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" after Vim startup -------------------- {{{
augroup at_end_of_vim_setup
	autocmd!
	autocmd VimEnter set winheight=5
	autocmd VimEnter set winminheight=3
	autocmd VimEnter set winheight=999
augroup END
" }}}
