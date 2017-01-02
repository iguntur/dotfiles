set nocompatible    "" be iMproved, required
filetype off        "" required
set laststatus=2


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" Interface
source ~/.vim/settings/interface.vim

"" Functions
"" source ~/.vim/settings/function.vim

"" Keymaps
source ~/.vim/settings/keymap.vim

"" Plugins
source ~/.vim/settings/plugin.vim


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Plugins
""   Let Vundle manage Vundle, required
""   Set the runtime path to include Vundle and initialize
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim "" required runtime path
call vundle#begin() "" required
Plugin 'VundleVim/Vundle.vim'

"" Source Vundle plugins
source ~/.vim/plugins/vundle.vim

call vundle#end() "" required


"" To ignore plugin indent changes, instead use:
"" filetype plugin on
filetype on           "" required
filetype plugin on    "" required
filetype indent on    "" required


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Brief HELP
""     :PluginList       - lists configured plugins
""     :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
""     :PluginSearch foo - searches for foo; append `!` to refresh local cache
""     :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

"" See :h vundle for more details or wiki for FAQ
"" Put your non-Plugin stuff after this line
