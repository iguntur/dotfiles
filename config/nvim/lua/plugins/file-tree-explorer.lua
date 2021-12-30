local M = {}
local keymap = vim.api.nvim_set_keymap

M.setup = function(use)
	use({
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icon
		},
		config = function()
			local ok, nvimTree = pcall(require, 'nvim-tree')

			if not ok then
				return
			end

			nvimTree.setup({})
		end,
	})

	-- keymap('n', '<C-b>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
	keymap('n', '<C-b>', ':NvimTreeToggle<CR>', { noremap = true, silent = true }) -- Ctrl+b
	keymap('n', '<C-Space>', ':NvimTreeFindFile<CR>', { noremap = true, silent = true }) -- Ctrl+space
	-- keymap('n', '<leader>r', ':NvimTreeRefresh<CR>', { noremap = true, silent = true })
end

return M
