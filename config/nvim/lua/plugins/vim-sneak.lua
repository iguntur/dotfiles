local M = {}
local keymap = vim.api.nvim_set_keymap

M.setup = function(use)
	use('justinmk/vim-sneak') -- Jump to any location specified by two characters.

	-- Settings
	vim.g['sneak#label'] = 1

	keymap('n', '<leader>s', '<Plug>Sneak_s', { silent = true }) -- jump forward
	keymap('n', '<leader>S', '<Plug>Sneak_S', { silent = true }) -- jump backward
end

return M
