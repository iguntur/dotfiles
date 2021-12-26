local M = {}

M.setup = function(use)
	use 'neovim/nvim-lspconfig' -- enable LSP
	use 'williamboman/nvim-lsp-installer' -- simple to use language server installer
end

return M