local M = {}

M.setup = function(use)
	use('unblevable/quick-scope') -- Quick jump with f/F

	-- unblevable/quick-scope
	vim.g.qs_highlight_on_keys = { 'f', 'F' } -- Trigger a highlight only when pressing f and F.
end

return M
