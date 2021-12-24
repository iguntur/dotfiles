local use = require('packer').use

use 'editorconfig/editorconfig-vim'

-- Editorconfig
vim.g.EditorConfig_exclude_patterns = {'fugitive://.*', 'scp://.*'}
