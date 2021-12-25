local M = {}

-- local use = require("packer").use

M.setup = function(use)
	use 'neovim/nvim-lspconfig' -- enable LSP
	use 'williamboman/nvim-lsp-installer' -- simple to use language server installer
end

return M
