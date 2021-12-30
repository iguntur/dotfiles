local M = {}
local keymap = vim.api.nvim_set_keymap

M.setup = function(use)
	use({
		'goolord/alpha-nvim',
		requires = {
			'kyazdani42/nvim-web-devicons',
		},
		config = function()
			local ok, startify = pcall(require, 'alpha.themes.startify')

			if not ok then
				return
			end

			require('alpha').setup(startify.opts)

			-- startify.section.mru_cwd.val = { { type = "padding", val = 0 } }
			startify.section.bottom_buttons.val = {
				startify.button('e', 'new file', ':ene <bar> startinsert <CR>'),
				startify.button('v', 'neovim config', ':e ~/.config/nvim/init.lua<CR>'),
				startify.button('q', 'quit nvim', ':qa<CR>'),
			}

			-- keymap('n', '<C-n>', ':Alpha<CR>', { noremap = true, silent = true })
		end,
	})
end

return M
