-- " Plug 'junegunn/fzf'
-- " Plug 'junegunn/fzf.vim'

-- """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
-- " FZF
-- """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
-- " (Ctrl-p) FZF Show Files
-- " inoremap <silent> <expr> <Esc><C-P><Esc>:Files<CR>

-- " Exclude files in .gitignore
-- " let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

local M = {}

local function setup_keymaps()
	local options = { noremap = true, silent = true }
	local keymap = vim.api.nvim_set_keymap

	keymap('n', '<C-p>', '<cmd>Files<CR>', options)
	keymap('v', '<C-p><Esc>', '<cmd>Files<CR>', options)
	keymap('n', '<leader>rg', '<cmd>RG<CR>', options)
end

M.setup = function(use)
	use('junegunn/fzf')
	use('junegunn/fzf.vim')

	vim.api.nvim_exec(
		[[
			" Always enable preview window on the right with 60% width
			let g:fzf_preview_window = 'right:70%'

			" let pluggedPath='~/.vim/plugged/fzf.vim/bin/preview.sh {}'
			let pluggedPath=stdpath('data') . '/plugged/fzf.vim/bin/preview.sh {}'

			command! -bang -nargs=? -complete=dir Files
				\ call fzf#vim#files(<q-args>, {'options': ['--height=90%', '--layout=reverse', '--info=inline', '--preview', pluggedPath]}, <bang>0)

			function! RipgrepFzf(query, fullscreen)
				let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
				let initial_command = printf(command_fmt, shellescape(a:query))
				let reload_command = printf(command_fmt, '{q}')
				let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
				call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
			endfunction

			command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>1)
		]],
		false
	)

	setup_keymaps()
end

return M
