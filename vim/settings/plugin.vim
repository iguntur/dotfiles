"" CtrlP
"""""""""""""""""""""
" Exclude files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']


"" preservim/nerdtree
"""""""""""""""""""""
let NERDTreeShowHidden=1 " Show hidden folders and files

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <silent> <C-n> :NERDTreeToggle<CR>
map <silent> <C-b> :NERDTreeFocus<CR>

"" Base 16 colors
"""""""""""""""""
let base16colorspace=256 " Access colors present in 256 colorspacea

""" Falcon ColorSchema
""""""""""""""""""""""
let g:falcon_lightline = 1
"let g:lightline.colorscheme = 'falcon'
let g:falcon_airline = 1

"" vim-airline/vim-airline
""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='default'
let g:airline#extensions#tabline#left_alt_sep='|'
let g:airline#extensions#tabline#left_sep=' '
let g:airline_powerline_fonts=1
let g:airline_theme='falcon'
let g:tabular_loaded=1
"let g:powerline_pycmd='py3'



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


" Move line
let g:move_key_modifier = 'C'
