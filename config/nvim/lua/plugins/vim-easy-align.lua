local M = {}
local keymap = vim.api.nvim_set_keymap

M.setup = function(use)
	use('junegunn/vim-easy-align') -- Text align
	use('godlygeek/tabular')

	-- Settings
	keymap('x', 'ga', '<Plug>(EasyAlign)', { silent = true }) -- Start interactive EasyAlign in visual mode (e.g. vipga)
	keymap('n', 'ga', '<Plug>(EasyAlign)', { silent = true }) -- Start interactive EasyAlign for a motion/text object (e.g. gaip)
end

return M
