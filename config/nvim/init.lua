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
	use 'wbthomason/packer.nvim'    -- Packer can manage itself

	require('plugins.ack')                   -- text searching
	require('plugins.autopairs')             -- autopairs quotes, parens, brackets, etc
	-- require('plugins.coc')                   -- ...
	require('plugins.colorschemes')          -- color schema
	require('plugins.completions')           -- the completion plugins
	require('plugins.editorconfig')          -- editorconfig
	require('plugins.emmet')                 -- emmet for html, xml, etc
	-- require('plugins.fzf')                   -- fzf
	require('plugins.git-integration')       -- git integration
	require('plugins.icons')                 -- ...
	-- require('plugins.javascript-typescript') -- ...
	require('plugins.goyo-limelight')        -- Hyperfocus-writing in Vim.
	require('plugins.lsp')                   -- Language Server Protocol (LSP)
	require('plugins.markdown')              -- ...
	-- require('plugins.nerdtree')              -- ...
	require('plugins.quick-scope')           -- ...
	require('plugins.syntastic')             -- ...
	require('plugins.syntax')                -- ...
	require('plugins.telescope')             -- ...
	require('plugins.vim-airline')           -- ...
	require('plugins.vim-better-whitespace') -- ...
	require('plugins.vim-caser')             -- ...
	require('plugins.vim-commentary')        -- ...
	require('plugins.vim-easy-align')        -- ...
	require('plugins.vim-highlighted-yank')  -- ...
	require('plugins.vim-move')              -- ...
	require('plugins.vim-sneak')             -- jump to any location specified by two characters.
	require('plugins.vim-surround')          -- ...
	require('plugins.vim-which-key')         -- show vim keymap

end)
