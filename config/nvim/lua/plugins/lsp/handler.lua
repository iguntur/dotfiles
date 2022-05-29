local M = {}

local status_ok, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')

if not status_ok then
	return
end

local function lsp_highlight_document(client)
	-- Set autocommands conditional on server_capabilities
	if client.resolved_capabilities.document_highlight then
		vim.api.nvim_exec(
			[[
				augroup lsp_document_highlight
					autocmd! * <buffer>
					autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
					autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
				augroup END
			]],
			false
		)
	end
end

local function setup_lspaga()
	local ok, lspsaga = pcall(require, 'lspsaga')

	if not ok then
		return
	end

	lspsaga.setup({ -- defaults ...
		debug = false,
		use_saga_diagnostic_sign = true,
		-- diagnostic sign
		error_sign = '?',
		warn_sign = '?',
		hint_sign = '?',
		infor_sign = '?',
		diagnostic_header_icon = ' ?  ',
		-- code action title icon
		code_action_icon = '? ',
		code_action_prompt = {
			enable = true,
			sign = true,
			sign_priority = 40,
			virtual_text = true,
		},
		finder_definition_icon = '?  ',
		finder_reference_icon = '?  ',
		max_preview_lines = 10,
		finder_action_keys = {
			open = 'o',
			vsplit = 's',
			split = 'i',
			quit = 'q',
			scroll_down = '<C-f>',
			scroll_up = '<C-b>',
		},
		code_action_keys = {
			quit = 'q',
			exec = '<CR>',
		},
		rename_action_keys = {
			quit = '<C-c>',
			exec = '<CR>',
		},
		definition_preview_icon = '?  ',
		border_style = 'single',
		rename_prompt_prefix = '?',
		rename_output_qflist = {
			enable = false,
			auto_open_qflist = false,
		},
		server_filetype_map = {},
		diagnostic_prefix_format = '%d. ',
		diagnostic_message_format = '%m %c',
		highlight_prefix = false,
	})
end

local function lsp_keymaps(bufnr)
	local opts = { noremap = true, silent = true }
	local set_keymap = vim.api.nvim_buf_set_keymap

	local function b_keymap(mode, lhs, rhs, options)
		opts = options or opts
		set_keymap(bufnr, mode, lhs, rhs, opts)
	end

	vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

	b_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
	b_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
	b_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
	b_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
	b_keymap('n', '<leader>fx', '<cmd>lua vim.lsp.buf.formatting()<CR>')
	b_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>')

	-- b_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>') -- use Lspsaga
	-- b_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>') -- use Lspsaga
	-- b_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>') -- use Lspsaga
	-- b_keymap('n', 'gl', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics({ border = "rounded" })<CR>')
	-- b_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>')
	-- b_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>')

	b_keymap('n', '<leader>do', '<cmd>lua vim.diagnostic.open_float()<CR>')
	-- b_keymap('n', '<leader>dq', '<cmd>lua vim.diagnostic.setloclist()<CR>')

	-- Handle by Lspsaga
	b_keymap('n', '<leader>rn', '<cmd>Lspsaga rename<CR>')
	b_keymap('n', '<leader>ca', '<cmd>Lspsaga code_action<CR>')
	b_keymap('x', '<leader>rca', '<cmd>Lspsaga range_code_action<CR>')
	b_keymap('n', 'K', '<cmd>Lspsaga hover_doc<CR>')
	b_keymap('n', 'go', '<cmd>Lspsaga show_line_diagnostics<CR>')
	b_keymap('n', 'gj', '<cmd>Lspsaga diagnostic_jump_next<CR>')
	b_keymap('n', 'gk', '<cmd>Lspsaga diagnostic_jump_prev<CR>')
	b_keymap('n', 'gs', '<cmd>Lspsaga signature_help<CR>')

	b_keymap('n', '<C-u>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(-1, "<c-u>")<CR>', {})
	b_keymap('n', '<C-d>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(1, "<c-d>")<CR>', {})

	vim.cmd([[ command! Format execute 'lua vim.lsp.buf.formatting()' ]])
end

-- TODO: backfill this to template
M.setup = function()
	local signs = {
		{ name = 'DiagnosticSignError', text = '?' },
		{ name = 'DiagnosticSignWarn', text = '?' },
		{ name = 'DiagnosticSignHint', text = '?' },
		{ name = 'DiagnosticSignInfo', text = '?' },
	}

	for _, sign in ipairs(signs) do
		vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = '' })
	end

	local config = {
		-- disable virtual text
		virtual_text = true,
		-- show signs
		signs = {
			active = signs,
		},
		update_in_insert = true,
		underline = true,
		severity_sort = true,
		float = {
			focusable = false,
			style = 'minimal',
			border = 'rounded',
			source = 'always',
			header = '',
			prefix = '',
		},
	}

	vim.diagnostic.config(config)

	vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, {
		border = 'rounded',
	})

	vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, {
		border = 'rounded',
	})
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
M.capabilities = cmp_nvim_lsp.update_capabilities(capabilities)
M.on_attach = function(client, bufnr)
	if client.name == 'tsserver' then
		client.resolved_capabilities.document_formatting = false
	end

	setup_lspaga()
	lsp_keymaps(bufnr)
	lsp_highlight_document(client)
end

return M
