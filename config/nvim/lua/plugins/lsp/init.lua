local M = {}

local lsp_config_file = {
	'jsonls',
	-- 'pyright',
	'sumneko_lua',
}

local function setup_lsp_installer()
	local status_ok, lsp_installer = pcall(require, 'nvim-lsp-installer')

	if not status_ok then
		return
	end

	-- Register a handler that will be called for all installed servers.
	-- Alternatively, you may also register handlers on specific server instances instead (see example below).
	lsp_installer.on_server_ready(function(server)
		local opts = {
			on_attach    = require('plugins.lsp.handler').on_attach,
			capabilities = require('plugins.lsp.handler').capabilities,
		}

		for _, fp in pairs(lsp_config_file) do
			if server.name == fp then
				local ok, extend_opts = pcall(require, 'plugins.lsp.settings.' .. fp)

				if ok then
					opts = vim.tbl_deep_extend('force', extend_opts, opts)
				end
			end
		end

		-- This setup() function is exactly the same as lspconfig's setup function.
		-- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
		server:setup(opts)
	end)
end

M.setup = function(use)
	use 'neovim/nvim-lspconfig'           -- enable LSP
	use 'williamboman/nvim-lsp-installer' -- simple to use language server installer
	use 'tamago324/nlsp-settings.nvim'    -- language server settings defined in json for

	setup_lsp_installer()
	require('plugins.lsp.handler').setup()
end

return M
