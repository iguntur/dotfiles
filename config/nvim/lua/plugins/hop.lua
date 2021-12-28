local M = {}

M.setup = function (use)
	use {
		'phaazon/hop.nvim',
		config = function()
			local ok, hop = pcall(require, 'hop')

			if not ok then
				return
			end

			-- you can configure Hop the way you like here; see :h hop-config
			hop.setup()
		end
	}
end

return M
