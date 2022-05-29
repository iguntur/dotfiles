local M = {}

M.setup = function(use)
	-- use 'liuchengxu/vim-which-key' -- show vim keymap

	use({
		'folke/which-key.nvim',
		config = function()
			local ok, which_key = pcall(require, 'which-key')

			if not ok then
				return
			end

			which_key.setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	})
end

return M
