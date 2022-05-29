set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Vim Plug (Plugin Manager)
"" Make sure you use single quotes
"" Specify a directory for plugins
"" - For Neovim: stdpath('data') . '/plugged' => ~/.local/share/nvim/plugged
"" - Avoid using standard Vim directory names like 'plugin'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let std_data_dir = has('nvim') ? stdpath('data') : '~/.local/share/vim'
let autoload_dir = std_data_dir . '/site/autoload'

if empty(glob(autoload_dir . '/plug.vim'))
	silent execute '!curl -fLo ' . autoload_dir . '/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PluginInstall --sync | source '~/.vimrc'
endif

call plug#begin(std_data_dir . '/plugged')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Common Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.config/nvim/plugins/vim-sensible.vim
source ~/.config/nvim/plugins/vim-commentary.vim
source ~/.config/nvim/plugins/vim-move.vim
source ~/.config/nvim/plugins/vim-better-whitespace.vim
source ~/.config/nvim/plugins/vimproc.vim
source ~/.config/nvim/plugins/vim-surround.vim
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/quick-scope.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/ack.vim
source ~/.config/nvim/plugins/goyo.vim
source ~/.config/nvim/plugins/limelight.vim
source ~/.config/nvim/plugins/vim-sneak.vim
source ~/.config/nvim/plugins/vim-airline.vim
source ~/.config/nvim/plugins/colorschemes.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/icons.vim
source ~/.config/nvim/plugins/syntax.vim
source ~/.config/nvim/plugins/vim-highlightedyank.vim
source ~/.config/nvim/plugins/vim-git-integration.vim
source ~/.config/nvim/plugins/editorconfig.vim
source ~/.config/nvim/plugins/autopairs.vim
source ~/.config/nvim/plugins/vim-caser.vim
source ~/.config/nvim/plugins/snippets.vim
source ~/.config/nvim/plugins/emmet.vim
source ~/.config/nvim/plugins/vim-easy-align.vim
source ~/.config/nvim/plugins/syntastic.vim
source ~/.config/nvim/plugins/javascript-typescript.vim
source ~/.config/nvim/plugins/markdown.vim
source ~/.config/nvim/plugins/vim-which-key.vim
source ~/.config/nvim/plugins/telescope.vim
source ~/.config/nvim/plugins/vim-thematic.vim

call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Automatically install missing plugins on startup
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.dotfiles/config/nvim/settings/base.vim
source ~/.dotfiles/config/nvim/settings/function.vim
source ~/.dotfiles/config/nvim/settings/keymap.vim
" source ~/.dotfiles/config/nvim/settings/plugin.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Others
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" after Vim startup -------------------- {{{
augroup at_end_of_vim_setup
	autocmd!
	autocmd VimEnter set winheight=5
	autocmd VimEnter set winminheight=3
	autocmd VimEnter set winheight=999
augroup END
" }}}
