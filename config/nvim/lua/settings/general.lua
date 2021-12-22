local g = vim.g
local fn = vim.fn
local cmd = vim.cmd
local opt = vim.opt

--------------------------------------------------------------------------------
-- Global Variables
--------------------------------------------------------------------------------
g.python3_host_prog = fn.expand('$HOME/.config/nvim/venv/bin/python3.9')
g.base16colorspace  = 256 -- Base 16 colors - access colors present in 256 colorspace

-- Map blankline
vim.g.indent_blankline_char                           = '┊'
vim.g.indent_blankline_show_trailing_blankline_indent = false
-- vim.g.indent_blankline_buftype_exclude                = { 'terminal', 'nofile' }
-- vim.g.indent_blankline_filetype_exclude               = { 'help', 'packer' }

--------------------------------------------------------------------------------
-- Text encoding and editing
--------------------------------------------------------------------------------
opt.autoindent    = true
opt.backspace     = 'indent,eol,start'
opt.cindent       = true
opt.encoding      = 'utf-8'
-- opt.expandtab     = true
opt.shiftwidth    = 4
opt.smarttab      = true
opt.softtabstop   = 4
opt.swapfile      = false
opt.tabstop       = 4
opt.textwidth     = 110
opt.wrap          = false
opt.termguicolors = true -- enable 24-bit RGB colors
opt.linebreak     = true

cmd([[
	set clipboard+=unnamedplus " -- Copy (yank) and paste with clipboard integration
	set shortmess+=I
	set cino=:0   " -- No indent for case:/default:
]])

--------------------------------------------------------------------------------
-- Interface
--------------------------------------------------------------------------------
cmd([[ syntax on ]])
-- cmd([[ colorscheme gruvbox ]])

opt.background     = 'dark'
opt.colorcolumn    = '110'
opt.cursorline     = true
opt.laststatus     = 2
opt.list           = true
opt.listchars      = 'tab:┊ ,space: ,trail:·'
opt.mouse          = 'a'
opt.number         = true
opt.numberwidth    = 5
opt.relativenumber = true
opt.ruler          = true
opt.scrolloff      = 17
opt.sidescrolloff  = 17
opt.title          = true
opt.wildmenu       = true
opt.wildmode       = 'longest:full,full'
-- opt.t_Co           = '256'
-- opt.wildcharm      = 4

--------------------------------------------------------------------------------
-- Search
--------------------------------------------------------------------------------
opt.hlsearch   = true -- highlight search result
opt.ignorecase = true
opt.smartcase  = true
opt.incsearch  = true -- move cursor to search as you type
opt.showmatch  = true