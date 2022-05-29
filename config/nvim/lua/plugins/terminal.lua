local M = {}
local keymap = vim.api.nvim_set_keymap

M.setup = function(use)
	use('akinsho/toggleterm.nvim')

	-- see: https://github.com/akinsho/toggleterm.nvim
	local ok, term = pcall(require, 'toggleterm')

	if not ok then
		return
	end

	term.setup()

	keymap('n', '<C-t>', ':ToggleTerm direction=float<CR>', { noremap = true, silent = true })
end

return M
