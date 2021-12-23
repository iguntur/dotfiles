vim.cmd([[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins.lua source <afile> | PackerCompile
	augroup end
]])

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'    -- Packer can manage itself

	require('user.ack')             -- text searching
	require('user.autopairs')
	-- require('user.coc')
	require('user.colorschemes')
	require('user.editorconfig')
	require('user.emmet')
	-- require('user.fzf')
	require('user.git-integration') -- git integration
	-- require('user.goyo')
	require('user.icons')
	-- require('user.javascript-typescript')
	require('user.limelight')
	require('user.markdown')
	-- require('user.nerdtree')
	require('user.quick-scope')
	-- require('user.snippets')
	require('user.syntastic')
	require('user.syntax')
	require('user.telescope')
	require('user.vim-airline')
	require('user.vim-better-whitespace')
	require('user.vim-caser')
	require('user.vim-commentary')
	require('user.vim-easy-align')
	require('user.vim-highlighted-yank')
	require('user.vim-move')
	-- require('user.vim-sensible')
	-- require('user.vim-sneak')
	require('user.vim-surround')
	-- require('user.vim-thematic')
	-- require('user.vim-which-key')
	-- require('user.vimproc')
end)
