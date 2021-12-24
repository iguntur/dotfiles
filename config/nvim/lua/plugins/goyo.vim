Plug 'junegunn/goyo.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Goyo - Distraction-free writing in Vim.
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

nmap <silent> <leader>gun :Goyo<CR><Esc>
