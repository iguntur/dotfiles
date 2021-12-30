local M = {}

M.setup = function(use)
	use('rcarriga/nvim-notify')

	local ok, notify = pcall(require, 'notify')

	if not ok then
		return
	end

	vim.notify = notify
end

return M
