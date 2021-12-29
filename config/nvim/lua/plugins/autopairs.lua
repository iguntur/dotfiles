local M = {}

M.setup = function(use)
	-- use 'tpope/vim-unimpaired' -- auto pair for (), [], {}
	-- use 'jiangmiao/auto-pairs' -- auto pair for (), [], {}, "", '', ``
	use('raimondi/delimitmate') -- provides insert mode auto-completion for quotes, parens, brackets, etc

	-- html autotag
	use('windwp/nvim-ts-autotag')

	-- require('nvim-ts-autotag').setup()
end

return M
