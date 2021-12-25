local use = require('packer').use
local keymap = vim.api.nvim_set_keymap

use 'junegunn/vim-easy-align' -- Text align


-- Settings
keymap('x', 'ga', '<Plug>(EasyAlign)', { silent = true }) -- Start interactive EasyAlign in visual mode (e.g. vipga)
keymap('n', 'ga', '<Plug>(EasyAlign)', { silent = true }) -- Start interactive EasyAlign for a motion/text object (e.g. gaip)
