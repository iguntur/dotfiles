local use = require('packer').use
local keymap = vim.api.nvim_set_keymap

use 'justinmk/vim-sneak' -- Jump to any location specified by two characters.

-- Settings
vim.g['sneak#label'] = 1

keymap('n', '<leader>s', '<Plug>Sneak_s', { silent = true })
keymap('n', '<leader>S', '<Plug>Sneak_S', { silent = true })
