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
	use 'wbthomason/packer.nvim'             -- Packer can manage itself
	use 'nvim-lua/popup.nvim'                -- An implementation of the Popup API from vim in Neovim
	use 'nvim-lua/plenary.nvim'              -- Useful lua functions used ny lots of plugins

	-- Plugins and Settings
	require('plugins.welcome').setup(use)               -- Vim welcome screen
	require('plugins.file-tree-explorer').setup(use)    -- File explorer
	require('plugins.ack').setup(use)                   -- text searching
	require('plugins.autopairs').setup(use)             -- autopairs quotes, parens, brackets, etc
	-- require('plugins.coc').setup(use)                   -- ...
	require('plugins.colorschemes').setup(use)          -- color schema
	require('plugins.completions').setup(use)           -- the completion plugins
	require('plugins.editorconfig').setup(use)          -- editorconfig
	require('plugins.emmet').setup(use)                 -- emmet for html, xml, etc
	-- require('plugins.fzf').setup(use)                   -- fzf
	require('plugins.git-integration').setup(use)       -- git integration
	require('plugins.icons').setup(use)                 -- ...
	-- require('plugins.javascript-typescript')            -- ...
	require('plugins.goyo-limelight')                   -- Hyperfocus-writing in Vim.
	require('plugins.lsp').setup(use)                   -- Language Server Protocol (LSP)
	require('plugins.markdown').setup(use)              -- ...
	require('plugins.quick-scope').setup(use)           -- ...
	require('plugins.syntastic').setup(use)             -- ...
	require('plugins.syntax').setup(use)                -- ...
	require('plugins.telescope').setup(use)             -- ...
	-- require('plugins.vim-airline').setup(use)           -- status bar
	require('plugins.lualine-nvim').setup(use)          -- status bar
	require('plugins.tab-bar').setup(use)               -- buffer/file opened tab bar
	require('plugins.vim-better-whitespace').setup(use) -- ...
	require('plugins.vim-caser').setup(use)             -- ...
	require('plugins.vim-commentary').setup(use)        -- ...
	require('plugins.vim-easy-align').setup(use)        -- ...
	require('plugins.vim-highlighted-yank').setup(use)  -- ...
	require('plugins.vim-move').setup(use)              -- ...
	require('plugins.vim-sneak').setup(use)             -- jump to any location specified by two characters.
	require('plugins.vim-surround').setup(use)          -- ...
	require('plugins.vim-which-key').setup(use)         -- show vim keymap
	require('plugins.treesitter').setup(use)            -- Treesitter

end)
