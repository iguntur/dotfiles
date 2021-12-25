local use = require('packer').use
local keymap = vim.api.nvim_set_keymap

use 'junegunn/limelight.vim' -- Hyperfocus-writing in Vim.
use 'junegunn/goyo.vim'      -- Distraction-free writing in Vim.

keymap('n', '<leader>l', ':Limelight!!<CR><Esc>', { noremap = true, silent = true })
keymap('x', '<leader>l', ':Limelight!!<CR><Esc>', { noremap = true, silent = true })
keymap('n', '<leader>gy', ':Goyo<CR><Esc>', { silent = true })

vim.cmd([[
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
]])
