"" NERD tree
let NERDTreeShowHidden=1 "" Show hidden folders and files

"" Base 16 colors
let base16colorspace=256 "" Access colors present in 256 colorspacea

let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'

let g:airline_powerline_fonts=1
let g:airline_theme='ravenpower'

let g:tabular_loaded=1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
