local M = {}
local keymap = vim.api.nvim_set_keymap

M.setup = function(use)
	use({
		'phaazon/hop.nvim',
		config = function()
			local ok, hop = pcall(require, 'hop')

			if not ok then
				return
			end

			-- you can configure Hop the way you like here; see :h hop-config
			hop.setup()
		end,
	})

	keymap('n', '<leader>jw', ':HopWord<CR>', { noremap = true, silent = true })
	keymap('n', '<leader>jp', ':HopPattern<CR>', { noremap = true, silent = true })
end

return M
