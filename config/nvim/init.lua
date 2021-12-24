require('settings.general')
require('settings.keymaps')

-- Plugins
vim.cmd([[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost init.lua source <afile> | PackerCompile
	augroup end
]])

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'    -- Packer can manage itself

	require('plugins.ack')             -- text searching
	require('plugins.autopairs')
	-- require('plugins.coc')
	require('plugins.colorschemes')
	require('plugins.editorconfig')
	require('plugins.emmet')
	-- require('plugins.fzf')
	require('plugins.git-integration') -- git integration
	-- require('plugins.goyo')
	require('plugins.icons')
	-- require('plugins.javascript-typescript')
	require('plugins.limelight')
	require('plugins.markdown')
	-- require('plugins.nerdtree')
	require('plugins.quick-scope')
	-- require('plugins.snippets')
	require('plugins.syntastic')
	require('plugins.syntax')
	require('plugins.telescope')
	require('plugins.vim-airline')
	require('plugins.vim-better-whitespace')
	require('plugins.vim-caser')
	require('plugins.vim-commentary')
	require('plugins.vim-easy-align')
	require('plugins.vim-highlighted-yank')
	require('plugins.vim-move')
	-- require('plugins.vim-sensible')
	-- require('plugins.vim-sneak')
	require('plugins.vim-surround')
	-- require('plugins.vim-thematic')
	-- require('plugins.vim-which-key')
	-- require('plugins.vimproc')
end)
