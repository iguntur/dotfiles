local M = {}

local function setup_nls()
	local ok, nls = pcall(require, 'null-ls')

	if not ok then
		return
	end

	local formatting = nls.builtins.formatting
	-- local diagnostic = nls.builtins.diagnostic

	nls.setup({
		sources = {
			nls.builtins.code_actions.gitsigns,

			formatting.stylua,
			-- formatting.prettier()
			-- nls.builtins.diagnostics.eslint,
			-- nls.builtins.completion.spell,
		},
	})
end

M.setup = function (use)
	use 'jose-elias-alvarez/null-ls.nvim'

	setup_nls()
end

return M
