local M = {}

M.setup = function(use)
	-- use 'mhinz/vim-signify'   -- Git Gutter
	use('tpope/vim-fugitive') -- A Git wrapper so awesome

	use({
		'lewis6991/gitsigns.nvim',
		requires = {
			'nvim-lua/plenary.nvim',
		},
		config = function()
			local ok, gitsigns = pcall(require, 'gitsigns')

			if not ok then
				return
			end

			gitsigns.setup()
		end,
	})
end

return M
