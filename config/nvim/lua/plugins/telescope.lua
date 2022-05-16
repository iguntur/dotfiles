local M = {}

local function n_map(lhs, rhs)
	vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true })
end

local function setup_keymap()
	-- Find files using Telescope command-line sugar.
	n_map('<Leader>ff', '<cmd>Telescope find_files<CR>') -- search file by filename
	n_map('<Leader>fg', '<cmd>Telescope live_grep<CR>') -- search file by text/keyword inside of the file
	n_map('<Leader>fb', '<cmd>Telescope buffers<CR>') -- list the opened file buffers
	-- n_map('<Leader>fh', '<cmd>Telescope help_tags<CR>')
	-- n_map('<Leader>fe', '<cmd>Telescope file_browser<CR>')

	-- LSP
	n_map('<Leader>fd', '<cmd>Telescope lsp_definitions<CR>')
	n_map('<Leader>fi', '<cmd>Telescope lsp_implementations<CR>')
	n_map('<Leader>fr', '<cmd>Telescope lsp_references<CR>')
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
		},
	})
end

M.setup = function(use)
	use('nvim-telescope/telescope.nvim')

	telescope_setup()
	setup_keymap()
end

return M
