Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Intellisense engine, full language server protocol support as VSCode

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Prettier
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! -nargs=0 Prettier :CocCommand prettier.formatFile

vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CoC Extensions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.dotfiles/config/nvim/lib/coc-nvim.vim
source ~/.dotfiles/config/nvim/lib/coc-explorer.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
