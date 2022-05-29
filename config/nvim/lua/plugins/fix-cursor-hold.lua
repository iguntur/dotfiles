local M = {}

M.setup = function(use)
	use('antoinemadec/FixCursorHold.nvim')

	-- in millisecond, used for both CursorHold and CursorHoldI,
	-- use updatetime instead if not defined
	-- see: https://github.com/antoinemadec/FixCursorHold.nvim
	vim.g.cursorhold_updatetime = 100
end

return M
