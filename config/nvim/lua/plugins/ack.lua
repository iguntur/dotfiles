local use = require('packer').use

use 'mileszs/ack.vim'

-- ACK - Text searching
vim.cmd([[ cnoreabbrev Ack Ack! ]])
vim.api.nvim_set_keymap('n', '<space>f', ':Ack! ""<Left>', { noremap = true, silent = true })
