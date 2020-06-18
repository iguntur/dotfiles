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
map <leader>w :w<CR>
map <leader>wq :wq<CR>
map <leader>qq :q!<CR>
map <leader>;; <Esc>A;<Esc>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Disable arrows
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" Normal mode
no <left> h
no <down> j
no <up> k
no <right> l

"" Insert mode
" inoremap <up> <Nop>
" inoremap <down> <Nop>
" inoremap <left> <Nop>
" inoremap <right> <Nop>

"" Visual mode
vnoremap <left> h
vnoremap <down> j
vnoremap <up> k
vnoremap <right> l


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Keymap
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Common text-editor keybinding
nnoremap <C-s> :w<CR> """ Save file
vnoremap <C-s> :w<CR> """ Save file

" Tab
vnoremap > >gv
vnoremap < <gv

" Resize window
nnoremap <M-j> :resize -2<CR>          """ Down
nnoremap <M-k> :resize +2<CR>          """ Up
nnoremap <M-h> :vertical resize -2<CR> """ Left
nnoremap <M-l> :vertical resize +2<CR> """ Right

" Cursor switching
nnoremap <C-h> <C-w>h """ move cursor to "left" window
nnoremap <C-j> <C-w>j """ move cursor to "top" window
nnoremap <C-k> <C-w>k """ move cursor to "bottom" window
nnoremap <C-l> <C-w>l """ move cursor to "right" window

" Tab switching
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" Reload VIM config
nnoremap <C-u> :source ~/.vimrc<CR>
vnoremap <C-u> :source ~/.vimrc<CR>
