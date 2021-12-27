local M = {}

M.setup = function(use)
	use 'flazz/vim-colorschemes'
	use 'NLKNguyen/papercolor-theme'
	use 'sainnhe/gruvbox-material' -- gruvbox-material
	use 'EdenEast/nightfox.nvim'   -- nightfox, nordfox, dayfox, dawnfox and duskfox

	local colorscheme = 'nightfox'
	local ok, _       = pcall(vim.cmd, 'colorscheme ' .. colorscheme)

	if not ok then
		vim.notify('colorscheme "' .. colorscheme .. '" not installed yet')
		return
	end
end

return M
