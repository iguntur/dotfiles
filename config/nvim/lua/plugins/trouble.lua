local M = {}

M.setup = function(use)
	use({
		'folke/trouble.nvim',
		requires = {
			'kyazdani42/nvim-web-devicons',
		},
		config = function()
			local ok, trouble = pcall(require, 'trouble')

			if not ok then
				return
			end

			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- see: https://github.com/folke/trouble.nvim
			trouble.setup({
				-- ...
			})
		end,
	})
end

return M
