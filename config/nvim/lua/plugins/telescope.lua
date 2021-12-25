local M = {}

local function n_map(lhs, rhs)
	vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true })
end

M.setup = function(use)
	use 'nvim-lua/popup.nvim'
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'


	-- Find files using Telescope command-line sugar.
	n_map('<Leader>ff', '<cmd>Telescope find_files<CR>')
	n_map('<Leader>fg', '<cmd>Telescope live_grep<CR>')
	n_map('<Leader>fb', '<cmd>Telescope buffers<CR>')
	n_map('<Leader>fh', '<cmd>Telescope help_tags<CR>')
end

return M
