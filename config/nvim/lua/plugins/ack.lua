local M = {}
local keymap = vim.api.nvim_set_keymap

M.setup = function(use)
	use('mileszs/ack.vim')

	-- ACK - Text searching
	vim.cmd([[ cnoreabbrev Ack Ack! ]])

	keymap('n', '<space>f', ':Ack! ""<Left>', { noremap = true, silent = true })
end

return M
