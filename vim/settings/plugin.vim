"" scrooloose/nerdtree
""""""""""""""""""""""
let NERDTreeShowHidden=1 "" Show hidden folders and files


"" Base 16 colors
"""""""""""""""""
let base16colorspace=256 "" Access colors present in 256 colorspacea


"" vim-airline/vim-airline
""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='default'
let g:airline#extensions#tabline#left_alt_sep='|'
let g:airline#extensions#tabline#left_sep=' '
let g:airline_powerline_fonts=1
let g:airline_theme='base16_chalk'
let g:tabular_loaded=1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


"" ntpeters/vim-better-whitespace
"""""""""""""""""""""""""""""""""
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1


"" pangloss/vim-javascript
""""""""""""""""""""""""""
let g:javascript_plugin_flow=1
let g:javascript_plugin_jsdoc=1
let g:javascript_plugin_ngdoc=1


"" Quramy/tsuquyomi
"""""""""""""""""""
let g:tsuquyomi_completion_detail=1

"" mattn/emmet-vim
""""""""""""""""""
let g:user_emmet_leader_key='<C-Z>'
