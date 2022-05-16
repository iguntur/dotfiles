local M = {}

local function setup_treesitter()
	local ok, config = pcall(require, 'nvim-treesitter.configs')

	if not ok then
		return
	end

	config.setup({
		ensure_installed = 'all', -- A list of parser names, or "all"
		sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
		ignore_install = { '' }, -- List of parsers to ignore installing
		highlight = {
			enable = true, -- false will disable the whole extension
			disable = { '' }, -- list of language that will be disabled

			-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
			-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
			-- Using this option may slow down your editor, and you may see some duplicate highlights.
			-- Instead of true it can also be a list of languages
			additional_vim_regex_highlighting = false,
		},
		indent = {
			enable = true,
			disable = { 'yaml' },
		},
		rainbow = {
			enable = true,
			-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
			extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
			max_file_lines = nil, -- Do not enable for files with more than n lines, int
			-- colors = {}, -- table of hex strings
			-- termcolors = {} -- table of colour name strings
		},
		refactor = {
			-- highlight_definitions = { enable = true },
			-- highlight_current_scope = { enable = true },
			smart_rename = {
				enable = true,
				keymaps = {
					smart_rename = 'grr',
				},
			},
			navigation = {
				enable = true,
				keymaps = {
					goto_definition = 'gnd',
					list_definitions = 'gnD',
					list_definitions_toc = 'gO',
					goto_next_usage = '<A-*>',
					goto_previous_usage = '<A-#>',
				},
			},
		},
	})
end

M.setup = function(use)
	use({
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		requires = {
			'p00f/nvim-ts-rainbow',
			'nvim-treesitter/nvim-treesitter-refactor',
		},
	})

	setup_treesitter()
end

return M
