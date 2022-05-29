local M = {}

M.setup = function(use)
	use('editorconfig/editorconfig-vim')

	-- Editorconfig
	vim.g.EditorConfig_exclude_patterns = { 'fugitive://.*', 'scp://.*' }
end

return M
