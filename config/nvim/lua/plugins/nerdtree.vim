" Plug 'preservim/nerdtree'          " (NERDTree) sidebar file manager
" Plug 'Xuyuanp/nerdtree-git-plugin' " (NERDTree) git status on sidebar

" File Manager

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" preservim/nerdtree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let NERDTreeShowHidden=1 " Show hidden folders and files

" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" map <silent> <C-n> :NERDTreeToggle<CR>
" map <silent> <C-b> :NERDTreeFocus<CR>
