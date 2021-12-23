local use = require('packer').use

use 'tpope/vim-commentary' -- Commenting

-- Keymaps: (Ctrl-/) commenting
vim.api.nvim_set_keymap('n', '<C-_>', 'gcc<Esc>', { silent = true })
vim.api.nvim_set_keymap('v', '<C-_>', 'gc<Esc>gv', { silent = true })
vim.api.nvim_set_keymap('i', '<C-_>', '<Esc>gcc<Esc>', { silent = true })
