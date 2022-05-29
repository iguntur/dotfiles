local M = {}

M.setup = function(use)
	use('vim-airline/vim-airline')
	use('vim-airline/vim-airline-themes')
	-- Plug 'powerline/powerline' " Vim Airline (powerline)

	-- vim-airline/vim-airline
	vim.g.airline_statusline_ontop = 0
	vim.g.airline_theme = 'simple'
	vim.g.tabular_loaded = 1
	vim.g.powerline_pycmd = 'py3'
	vim.g.airline_powerline_fonts = 0

	vim.g['airline#extensions#tabline#enabled'] = 1
	vim.g['airline#extensions#tabline#formatter'] = 'unique_tail'
	vim.g['airline#extensions#tabline#left_alt_sep'] = ' | '
	vim.g['airline#extensions#tabline#left_sep'] = ' '
end

return M
