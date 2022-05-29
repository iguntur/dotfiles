local M = {}

local default_opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

local function kmap(mode, lhs, rhs, options)
	options = options or default_opts
	keymap(mode, lhs, rhs, options)
end

local function setup_keymaps()
	local ok, dap = pcall(require, 'dap')

	if not ok then
		return
	end

	kmap('n', '<Leader>dd', '<cmd>DapToggleBreakpoint<CR>')
	kmap('n', '<F5>', '<cmd>DapContinue<CR>')
	kmap('n', '<F6>', '<cmd>DapStepInto<CR>')
	kmap('n', '<F7>', '<cmd>DapStepOut<CR>')
	kmap('n', '<F8>', '<cmd>DapStepOver<CR>')
	kmap('n', '<F9>', '<cmd>DapTerminate<CR>')
end

M.setup = function(use)
	use('mfussenegger/nvim-dap')

	setup_keymaps()
end

return M
