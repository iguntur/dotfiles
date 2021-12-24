"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" How to mapping?
""   no   = noremap
""   map  = command mapping
""   Nop  = no operation

""   i[*] = insert mode
""   n[*] = normal mode
""   v[*] = visual mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -- nnoremap <silent>q: <Nop>

" -- Allow gf to open non-existent files
" -- map gf :edit <cfile><cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocompletion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Handle <Enter> key press on insert mode
inoremap <expr> <CR> (pumvisible() ?  "\<C-y>\<C-r>" : "\<CR>")

" (TAB) For Autocompletion
inoremap <expr> <C-j> pumvisible() ?  "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ?  "\<C-p>" : "\<C-k>"

cnoremap <expr> <C-j> pumvisible() ?  "\<C-n>" : "\<C-j>"
cnoremap <expr> <C-k> pumvisible() ?  "\<C-p>" : "\<C-k>"


" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
imap <leader><tab> <plug>(fzf-maps-i)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nnoremap <F1> :call <SNR>29_show_documentation()<CR>

" -- nmap <silent> <Cmd>k <Nop>
" -- nmap <silent> <Cmd-k> <Nop>


" -- Find files using Telescope command-line sugar.
" -- nnoremap <leader>ff <cmd>Telescope find_files<cr>
" -- nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" -- nnoremap <leader>fb <cmd>Telescope buffers<cr>
" -- nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" -- Reset Keymap
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" for key in ['<Up>', '<Down>', '<Left>', '<Right>']
" 	" exec 'cnoremap <silent>' key '<Nop>'
" 	" exec 'inoremap <silent>' key '<Nop>'
" 	exec 'nnoremap <silent>' key '<Nop>'
" 	exec 'vnoremap <silent>' key '<Nop>'
" endfor

" Movement
" nnoremap <silent> j jzz
" nnoremap <silent> k kzz

" -- nnoremap <silent> <space> <Esc>
" -- nnoremap <silent> <C-space> <Esc>0
" -- nnoremap <silent> <Del> <Esc>
" -- nnoremap <silent> <BS> <Esc>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Leader Keymap
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>ww :w<CR>
nnoremap <silent> <leader>wq :wq<CR>
nnoremap <silent> <leader>qq :q!<CR>
nnoremap <silent> <leader>we :bw<CR>
nnoremap <silent> <leader>wc :bw!<CR>
nnoremap <silent> <leader>Q :qall!<CR>
" map <leader>;; <Esc>A;<Esc>

" Clear the highlight search
" x -- nnoremap <silent> <leader><Space> :set scrolloff=20<CR><Esc>
" -- nnoremap <silent> <Esc> :nohlsearch<CR><Esc>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Common Shortcut
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" (Alt-o) Reload VIM config
nmap <silent> <F5> :source ~/.config/nvim/init.vim<CR><Esc><Esc>
" nnoremap <silent> <M-o> :source ~/.config/nvim/init.vim<CR><Esc><Esc>

" Change color schemes
" <leader>cs
nnoremap <silent> <leader>cs :Colors<CR>

" -- (Ctrl-/) Commenting
" -- nmap <silent> <C-_> gcc<Esc>
" -- vmap <silent> <C-_> gc<Esc>gv
" -- imap <silent> <C-_> <Esc>gcc<Esc>

" (Alt-/) Commenting
" nmap <silent> <M-/> gcc<Esc>
" vmap <silent> <M-/> gc<Esc>gv
" imap <silent> <M-/> <Esc>gcc<Esc>


" -- (Alt-s) Write/Save File
" nnoremap <silent> <M-S-q> :qall!<CR><Esc>
" nnoremap <silent> <M-s> :w<CR><Esc>
" vnoremap <silent> <M-s> :w<CR><Esc>
" inoremap <silent> <M-s> <Esc>:w<Esc>


" -- (Alt-q) Quit - Also will be replace Ex Mode
" nnoremap <silent> <M-q> :q<Esc>

" -- (Alt-w) Close current buffer
" nnoremap <silent> <M-w> :bw<Esc>

" -- ( Shift-h ) Move cursor to the first character
" nnoremap <silent> H ^<Esc>

" -- ( Shift-l ) Move cursor to the last character
" nnoremap <silent> L $<Esc>

" -- Move cursor when insert mode
" inoremap <silent> <C-h> <Left>
" inoremap <silent> <C-j> <Down>
" inoremap <silent> <C-k> <Up>
" inoremap <silent> <C-l> <Right>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Jumping empty line, like (Shift-{})
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -- Up: ctrl+k
" nnoremap <silent> <C-k> {<Esc>
" -- Down: ctrl+j
" nnoremap <silent> <C-j> }<Esc>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Resize window (Ctrl-Shift-<Arrow_Keys>)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Up
" cnoremap <silent> <expr> <C-S-Up> :resize +1<CR>
xnoremap <silent> <expr> <C-S-Up> :resize +1<CR>
inoremap <silent> <C-S-Up> :resize +1<CR>
nnoremap <silent> <C-S-Up> :resize +1<CR>
vnoremap <silent> <C-S-Up> :resize +1<CR>

" Down
" cnoremap <silent> <expr> <C-S-Down> :resize -1<CR>
xnoremap <silent> <expr> <C-S-Down> :resize -1<CR>
inoremap <silent> <C-S-Down> :resize -1<CR>
nnoremap <silent> <C-S-Down> :resize -1<CR>
vnoremap <silent> <C-S-Down> :resize -1<CR>

" Left
" cnoremap <silent> <C-S-Left> :vertical resize -1<CR>
inoremap <silent> <C-S-Left> :vertical resize -1<CR>
nnoremap <silent> <C-S-Left> :vertical resize -1<CR>
vnoremap <silent> <C-S-Left> :vertical resize -1<CR>

" Right
" cnoremap <silent> <C-S-Right> :vertical resize +1<CR>
inoremap <silent> <C-S-Right> :vertical resize +1<CR>
nnoremap <silent> <C-S-Right> :vertical resize +1<CR>
vnoremap <silent> <C-S-Right> :vertical resize +1<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -- Tab switching
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nnoremap <silent> <TAB> :bnext<CR>
" nnoremap <silent> <S-TAB> :bprevious<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -- Indentation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -- ( Shift-> ) Tab Like (Right)
" vnoremap <silent> > >gv
" nnoremap > >>_

" -- ( Shift-< ) Shift-Tab (Left)
" vnoremap <silent> < <gv
" nnoremap < <<_


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -- Move Cursor Into Window
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -- move cursor to "bottom" window
" -- nnoremap <silent> <M-n> <C-w>j

" -- move cursor to "top" window
" -- nnoremap <silent> <M-m> <C-w>k

" -- move cursor to "left" window
" -- nnoremap <silent> <M-,> <C-w>h

" -- move cursor to "right" window
" -- nnoremap <silent> <M-.> <C-w>l


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -- Insert Empty Line(s)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -- (Alt-Shift-k) Insert empty line on top cursor and up
" nnoremap <silent> <M-K> <S-o><Esc>"_cc<Esc>

" -- (Alt-Shift-j) Insert empty line on bottom cursor and down
" nnoremap <silent> <M-J> o<Esc>"_cc<Esc>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Duplicate Line(s)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -- (Ctrl-Alt-k) Duplicate Line Up
" nnoremap <silent> <M-C-K> <Esc>^<Esc>"0yy "0P<Esc>
" vnoremap <silent> <M-C-K> <Nop>

" -- (Ctrl-Alt-j) Duplicate Line Down
" nnoremap <silent> <M-NL> <Esc>^<Esc>"0yy "0p<Esc>
" vnoremap <silent> <M-NL> <Nop>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -- Delete Line(s)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -- Remove(Cut) active line
" nnoremap <silent> <M-d> "_dd<Esc>
" vnoremap <silent> <M-d> "_d<Esc>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -- Pair Space
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -- inoremap <silent> <M-Space> <Esc>2a<space><Esc>i
" -- nnoremap <silent> <M-Space> <Esc>2a<space><Esc>i


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -- Utilities
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -- (Space-s) Sort Lines Natural (Asc)
" vnoremap <silent> <space>s :'<,'>!sort -f<CR><Esc>
