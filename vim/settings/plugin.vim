"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editor Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 'unblevable/quick-scope'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Trigger a highlight only when pressing f and F.
" let g:qs_accepted_chars = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '<', '>', '{', '}', '[', ']', '(', ')', '@', '#', '$', ';', ',', '.', '-', '+', '*', '/']
let g:qs_highlight_on_keys = ['f', 'F']


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" justinmk/vim-sneak
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:sneak#label = 1
" nmap <leader>s <Plug>Sneak_s
" nmap <leader>S <Plug>Sneak_S

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ACK
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cnoreabbrev Ack Ack!
nnoremap <space>f :Ack! ""<Left>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Goyo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:goyo_enter()
	set nolist
	Limelight
endfunction

function! s:goyo_leave()
	set list listchars=tab:┊\ ,space:\ ,trail:·
	Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

nmap <silent><F11> :Goyo<CR><Esc>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" FZF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" (Ctrl-p) FZF Show Files
" inoremap <silent> <expr> <Esc><C-P><Esc>:Files<CR>
nnoremap <silent> <C-p> :Files<CR>
vnoremap <silent> <C-p><Esc> :Files<CR>

" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:70%'

" let pluggedPath='~/.vim/plugged/fzf.vim/bin/preview.sh {}'
let pluggedPath=stdpath('data') . '/plugged/fzf.vim/bin/preview.sh {}'

" if (has('nvim'))
" endif

command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--height=80%', '--layout=reverse', '--info=inline', '--preview', pluggedPath]}, <bang>0)

function! RipgrepFzf(query, fullscreen)
	let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
	let initial_command = printf(command_fmt, shellescape(a:query))
	let reload_command = printf(command_fmt, '{q}')
	let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
	call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction
command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>1)


" Exclude files in .gitignore
" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Limelight
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>l :Limelight!!<CR><Esc>
xnoremap <silent> <leader>l :Limelight!!<CR><Esc>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" preservim/nerdtree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let NERDTreeShowHidden=1 " Show hidden folders and files

" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" map <silent> <C-n> :NERDTreeToggle<CR>
" map <silent> <C-b> :NERDTreeFocus<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Falcon ColorSchema
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:falcon_lightline = 1
"let g:lightline.colorscheme = 'falcon'
let g:falcon_airline = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" vim-airline/vim-airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline#extensions#tabline#left_alt_sep=' | '
let g:airline#extensions#tabline#left_sep=' '
let g:airline_statusline_ontop=0
let g:airline_theme='simple'
let g:tabular_loaded=1
let g:powerline_pycmd='py3'
let g:airline_powerline_fonts=0



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 'reedes/vim-thematic'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:thematic#theme_name = 'pencil_dark'

" nnoremap <leader>T :ThematicNext<Esc><CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" ntpeters/vim-better-whitespace
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" pangloss/vim-javascript
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:javascript_plugin_flow=1
let g:javascript_plugin_jsdoc=1
let g:javascript_plugin_ngdoc=1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Quramy/tsuquyomi
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tsuquyomi_completion_detail=1
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" mattn/emmet-vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:user_emmet_leader_key='<C-Z>'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Move line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:move_key_modifier = 'C' " Default 'A' (Alt)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Prettier
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! -nargs=0 Prettier :CocCommand prettier.formatFile

vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CoC Extensions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/lib/coc-nvim.vim
source ~/.vim/lib/coc-explorer.vim

