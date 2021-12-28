local keymap = vim.api.nvim_set_keymap

local M = {}

M.setup = function(use)
	-- use 'junegunn/limelight.vim' -- Hyperfocus-writing in Vim.
	-- use 'junegunn/goyo.vim'      -- Distraction-free writing in Vim.
	use({
		'folke/twilight.nvim',
		config = function()
			local ok, tw = pcall(require, 'twilight')

			if not ok then
				return
			end

			tw.setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	})

	use({
		'folke/zen-mode.nvim',
		config = function()
			local ok, zen_mode = pcall(require, 'zen-mode')

			if not ok then
				return
			end

			zen_mode.setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	})

	keymap('n', '<leader>l', ':Twilight<CR><Esc>', { noremap = true, silent = true })
	keymap('x', '<leader>l', ':Twilight<CR><Esc>', { noremap = true, silent = true })
	keymap('n', '<leader>zm', ':ZenMode<CR><Esc>', { silent = true })
end

return M
