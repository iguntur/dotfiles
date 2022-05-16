local M = {}

local function setup_tsAutoTag()
	local ok, autoTag = pcall(require, 'windwp/nvim-ts-autotag')

	if not ok then
		return
	end
	-- html autotag
	autoTag.setup()
	-- use('windwp/nvim-ts-autotag').setup()
end

M.setup = function(use)
	-- use 'tpope/vim-unimpaired' -- auto pair for (), [], {}
	-- use 'jiangmiao/auto-pairs' -- auto pair for (), [], {}, "", '', ``
	use('raimondi/delimitmate') -- provides insert mode auto-completion for quotes, parens, brackets, etc

	setup_tsAutoTag()
end

return M
