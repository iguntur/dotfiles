local M = {}

local function n_map(lhs, rhs)
	vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true })
end

local function setup_keymap()
	-- Find files using Telescope command-line sugar.
	n_map('<Leader>ff', '<cmd>Telescope find_files<CR>')
	n_map('<Leader>fg', '<cmd>Telescope live_grep<CR>')
	n_map('<Leader>fb', '<cmd>Telescope buffers<CR>')
	n_map('<Leader>fh', '<cmd>Telescope help_tags<CR>')
end

local function telescope_setup()
	local ok, telescope = pcall(require, 'telescope')

	if not ok then
		return
	end

	telescope.setup({
		defaults = {
			layout_config = {
				prompt_position = 'top',
			},
			sorting_strategy = 'ascending',
		},
		pickers = {
			-- ...
		},
		extensions = {
			-- ...
		}
	})
end

M.setup = function(use)
	use 'nvim-telescope/telescope.nvim'

	telescope_setup()
	setup_keymap()
end

return M
