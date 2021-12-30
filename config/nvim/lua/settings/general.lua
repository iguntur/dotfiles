local g = vim.g
local fn = vim.fn
local cmd = vim.cmd
local opt = vim.opt

--------------------------------------------------------------------------------
-- Global Variables
--------------------------------------------------------------------------------
g.python3_host_prog = fn.expand('$HOME/.config/nvim/venv/bin/python3.9')
g.base16colorspace = 256 -- Base 16 colors - access colors present in 256 colorspace

-- Map blankline
vim.g.indent_blankline_char = '┊'
vim.g.indent_blankline_show_trailing_blankline_indent = false
-- vim.g.indent_blankline_buftype_exclude                = { 'terminal', 'nofile' }
-- vim.g.indent_blankline_filetype_exclude               = { 'help', 'packer' }

--------------------------------------------------------------------------------
-- Text encoding and editing
--------------------------------------------------------------------------------
opt.autoindent = true
opt.backspace = { 'indent', 'eol', 'start' }
opt.cindent = true
opt.cino = ':0' -- (C Lang) No indent for case:/default:
opt.encoding = 'utf-8'
opt.expandtab = false -- convert tabs to spaces
opt.shiftwidth = 4
opt.smarttab = true
opt.softtabstop = 4
opt.swapfile = false
opt.tabstop = 4
opt.textwidth = 110
opt.wrap = false
opt.linebreak = true
opt.undofile = true -- enable persistent undo

opt.clipboard:append('unnamedplus') -- Copy (yank) and paste with clipboard integration
opt.shortmess:append('I') -- Disable Neovim welcome page

--------------------------------------------------------------------------------
-- Interface
--------------------------------------------------------------------------------
cmd([[ syntax on ]])

opt.background = 'dark'
opt.colorcolumn = '110'
opt.cursorline = true
opt.laststatus = 2
opt.list = true
-- opt.listchars      = 'tab:┊ ,space: ,trail:·'
opt.listchars = { tab = '▸ ', trail = '·' } -- eol = '↲'
opt.mouse = 'a'
opt.number = true
opt.numberwidth = 6
opt.relativenumber = true
opt.ruler = true
opt.scrolloff = 17
opt.sidescrolloff = 17
opt.title = true
opt.wildmenu = true
opt.wildmode = 'longest:full,full'
-- opt.t_Co           = '256'
-- opt.wildcharm      = 4
opt.pumheight = 10 -- pop up menu height
opt.completeopt = { 'menuone', 'noselect' }
opt.termguicolors = true -- enable 24-bit RGB colors
opt.splitbelow = true -- make all horizontal split to go below window
opt.splitright = true -- make all vertical split to go to the right
opt.backup = false -- create backup file

--------------------------------------------------------------------------------
-- Search
--------------------------------------------------------------------------------
opt.hlsearch = true -- highlight search result
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true -- move cursor to search as you type
opt.showmatch = true

--------------------------------------------------------------------------------
-- LSP Stuff
--------------------------------------------------------------------------------
cmd([[  set tagfunc=v:lua.vim.lsp.tagfunc ]])
