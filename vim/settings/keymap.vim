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
"" Disable arrows
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" Normal mode
no <up> <Nop>
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>

"" Insert mode
ino <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>

"" Visual mode
vno <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>


"" Leader Keymap
""""""""""""""""
map <leader>w :w<CR>
map <leader>wq :wq<CR>
map <leader>qq :q!<CR>
map <leader>;; <Esc>A;<Esc>


"""""""""""""""""""
"" Plugin Mapping "
"""""""""""""""""""

"" NERD tree
""""""""""""
map <C-n> :NERDTreeToggle<CR>
map <C-b> :NERDTreeFocus<CR>

map <C-u> source ~/.vimrc<CR>
