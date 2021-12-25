local M = {}

M.setup = function(use)
	use 'flazz/vim-colorschemes'
	use 'NLKNguyen/papercolor-theme'

	local colorscheme = 'gruvbox'
	local ok, _       = pcall(vim.cmd, 'colorscheme ' .. colorscheme)

	if not ok then
		vim.notify('colorscheme ' .. colorscheme .. 'not installed yet')
		return
	end
end

return M
