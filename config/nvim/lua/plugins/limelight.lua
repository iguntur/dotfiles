local use = require('packer').use

use 'junegunn/limelight.vim'

-- Limelight - Hyperfocus-writing in Vim.
vim.api.nvim_set_keymap('n', '<leader>l', ':Limelight!!<CR><Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<leader>l', ':Limelight!!<CR><Esc>', { noremap = true, silent = true })
