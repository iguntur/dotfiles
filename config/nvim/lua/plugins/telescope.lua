local M = {}

local function n_map(lhs, rhs)
	vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true })
end

local function setup_keymap()
	-- Find files using Telescope command-line sugar.
	-- n_map('<Leader>ff', '<cmd>Telescope find_files<CR>') -- search file by filename
	n_map('<Leader>p', '<cmd>Telescope find_files<CR>') -- search file by filename
	n_map('<Leader>fg', '<cmd>Telescope live_grep<CR>') -- search file by text/keyword inside of the file
	n_map('<Leader>fb', '<cmd>Telescope buffers<CR>') -- list the opened file buffers
	n_map('<Leader>f?', '<cmd>Telescope help_tags<CR>')

	-- Extensions
	-- Telescope file browser
	n_map('<Leader>fe', '<cmd>Telescope file_browser<CR>')

	-- LSP
	n_map('<Leader>fd', '<cmd>Telescope lsp_definitions<CR>')
	n_map('<Leader>fi', '<cmd>Telescope lsp_implementations<CR>')
	n_map('<Leader>fr', '<cmd>Telescope lsp_references<CR>')
	n_map('<Leader>fs', '<cmd>Telescope lsp_workspace_symbols<CR>')

	-- Commands
	n_map('<Leader>fch', '<cmd>Telescope command_history<CR>')
end

local function telescope_setup()
	local ok, telescope = pcall(require, 'telescope')

	if not ok then
		return
	end

	local action = require('telescope.actions')

	telescope.setup({
		defaults = {
			mappings = {
				i = {
					['<Esc>'] = action.close,
				},
			},
			vimgrep_arguments = {
				'rg',
				'--color=never',
				'--no-heading',
				'--with-filename',
				'--line-number',
				'--column',
				'--smart-case',
				-- "--trim" -- add this value
			},
			layout_config = {
				prompt_position = 'top',
			},
			sorting_strategy = 'ascending',
		},
		-- pickers = {
		-- 	-- ...
		-- },
		-- extensions = {
		-- 	-- ...
		-- },
	})
end

local function load_extension()
	local ok, telescope = pcall(require, 'telescope')

	if not ok then
		return
	end

	local extensions = {
		'file_browser',
		'fzf',
	}

	for _, ext in ipairs(extensions) do
		_ = telescope.load_extension(ext)
	end
end

M.setup = function(use)
	use('nvim-telescope/telescope.nvim')
	use('nvim-telescope/telescope-file-browser.nvim')
	use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })

	telescope_setup()
	load_extension()
	setup_keymap()
end

return M
