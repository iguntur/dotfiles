local use = require('packer').use

use 'ntpeters/vim-better-whitespace'

-- coloring trailing whitespace and remove
vim.g.better_whitespace_enabled = 1
vim.g.strip_whitespace_on_save = 1
