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
no <up> ddkP
no <down> ddp
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


map <leader>w :w <CR>
map <leader>wq :wq <CR>
map <leader>qq :q! <CR>


"" Plugin Mapping

"" NERD tree
""   Stick this in your vimrc to open NERDTree with Ctrl+n (you can set whatever key you want):
map <C-n> :NERDTreeToggle<CR>
map <C-b> :NERDTreeFind<CR>
