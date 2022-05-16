require('settings.general')
require('settings.keymaps')

-- Autocommand that reloads neovim whenever you save the init.lua file
vim.cmd([[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost init.lua source <afile> | PackerCompile
	augroup end
]])

-- Use a protected call so we don't error out on first use
local ok, packer = pcall(require, 'packer')
if not ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require('packer.util').float({ border = 'rounded' })
		end,
	},
})

-- Plugins
return packer.startup(function(use)
	use('wbthomason/packer.nvim') -- Packer can manage itself
	use('nvim-lua/popup.nvim') -- An implementation of the Popup API from vim in Neovim
	use('nvim-lua/plenary.nvim') -- Useful lua functions used ny lots of plugins

	-- Plugins and Settings
	require('plugins.fix-cursor-hold').setup(use) -- fix `CursorHold` performance and to fix lsp doc highlight

	-- Appereances
	require('plugins.icons').setup(use) -- ...
	require('plugins.dashboard').setup(use) -- dashboard screen
	require('plugins.vim-notify').setup(use) -- fix `CursorHold` performance and to fix lsp doc highlight
	require('plugins.colorschemes').setup(use) -- color schema
	require('plugins.hyper-focus').setup(use) -- hyper focus-writing (ZenMode)
	require('plugins.lualine-nvim').setup(use) -- status bar
	require('plugins.tab-bar').setup(use) -- buffer/file opened tab bar
	require('plugins.vim-highlighted-yank').setup(use) -- highlight yank text object

	-- Text Edit and Format
	require('plugins.vim-commentary').setup(use) -- text comment
	require('plugins.autopairs').setup(use) -- autopairs quotes, parens, brackets, etc
	require('plugins.vim-surround').setup(use) -- quoting or parenthesizing made simple
	require('plugins.completions').setup(use) -- the completion plugins
	require('plugins.editorconfig').setup(use) -- editorconfig
	require('plugins.emmet').setup(use) -- emmet for html, xml, etc
	require('plugins.vim-better-whitespace').setup(use) -- highlight and remove trailing whitespace
	require('plugins.vim-caser').setup(use) -- easily change word casing (PascalCase, camelCase, etc)
	require('plugins.vim-easy-align').setup(use) -- text align
	require('plugins.nvim-null-ls').setup(use) -- text formatter
	require('plugins.indent-blankline').setup(use) -- indent guides
	require('plugins.vim-move').setup(use) -- move line up/botom or object to left/right

	-- Git Integration
	require('plugins.git-integration').setup(use) -- git integration

	-- File and Text Explorer
	require('plugins.file-tree-explorer').setup(use) -- file explorer
	require('plugins.telescope').setup(use) -- text, file, buffer or anything to search
	require('plugins.quick-scope').setup(use) -- jump to Text Object
	require('plugins.vim-sneak').setup(use) -- jump to any location specified by two characters.
	require('plugins.hop').setup(use) -- easy motion like - jump to any line word

	-- LSP
	require('plugins.lsp').setup(use) -- Language Server Protocol (LSP)
	require('plugins.treesitter').setup(use) -- treesitter

	-- Debugging and Diagnostic
	require('plugins.trouble').setup(use) -- diagnostic with folke trouble

	-- Utilities
	require('plugins.vim-which-key').setup(use) -- show vim keymap

	-- Terminal
	require('plugins.terminal').setup(use) -- open terminal

	-- require('plugins.ack').setup(use) -- text searching
	-- require('plugins.syntax').setup(use) -- ...
	-- require('plugins.syntastic').setup(use) -- ...
	-- require('plugins.coc').setup(use)                     -- ...
	-- require('plugins.fzf').setup(use)                     -- fzf
	-- require('plugins.javascript-typescript')              -- ...
	-- require('plugins.vim-airline').setup(use)             -- status bar
	-- require('plugins.markdown').setup(use) -- markdown
end)
