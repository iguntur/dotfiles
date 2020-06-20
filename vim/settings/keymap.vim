"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" How to mapping?
""      no   = noremap
""      map  = command mapping
""      Nop  = no operation

""      i[*] = insert mode
""      n[*] = normal mode
""      v[*] = visual mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Leader Keymap
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <silent> <leader>wq :wq<CR>
map <silent> <leader>we :w<CR>
map <silent> <leader>qq :q!<CR>
" map <leader>;; <Esc>A;<Esc>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Disable arrows
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" Normal mode
no <Left> h
no <Down> j
no <Up> k
no <Right> l

"" Insert mode
" inoremap <up> <Nop>
" inoremap <down> <Nop>
" inoremap <left> <Nop>
" inoremap <right> <Nop>

"" Visual mode
vnoremap <Left> h
vnoremap <Down> j
vnoremap <Up> k
vnoremap <Right> l


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Keymap
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Common text-editor keybinding
" nnoremap <silent> <C-s> :w<Esc>     " Save file
" vnoremap <silent> <C-s> :w<Esc>     " Save file

" Tab
vnoremap > >gv
vnoremap < <gv

" Resize window
nnoremap <silent> <M-j> :resize -2<CR>            """ Down
nnoremap <silent> <M-k> :resize +2<CR>            """ Up
nnoremap <silent> <M-h> :vertical resize -2<CR>   """ Left
nnoremap <silent> <M-l> :vertical resize +2<CR>   """ Right

" Cursor switching
nnoremap <silent> <C-h> <C-w>h                    """ move cursor to "left" window
nnoremap <silent> <C-j> <C-w>j                    """ move cursor to "top" window
nnoremap <silent> <C-k> <C-w>k                    """ move cursor to "bottom" window
nnoremap <silent> <C-l> <C-w>l                    """ move cursor to "right" window

" Tab switching
nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-TAB> :bprevious<CR>

" Reload VIM config
nnoremap <C-o> :source ~/.config/nvim/init.vim<CR>
vnoremap <C-o> :source ~/.config/nvim/init.vim<CR>


" nnoremap <C-S-k> <S-o><Esc>
" nnoremap <C-S-j> o<Esc>
