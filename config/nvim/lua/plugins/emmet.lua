local M = {}

M.setup = function(use)
	use('mattn/emmet-vim')

	-- Emmet
	vim.g.user_emmet_leader_key = '<C-Z>'
end

return M
