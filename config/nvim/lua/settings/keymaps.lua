-- Set Leader to a comma - <leader>
vim.g.mapleader = ','

--------------------------------------------------------------------------------
-- Map Helper Function
--------------------------------------------------------------------------------
local default_opts = { noremap = true, silent = true }

function n_map(lhs, rhs, options)
	vim.api.nvim_set_keymap('n', lhs, rhs, options)
end

function i_map(lhs, rhs, options)
	vim.api.nvim_set_keymap('i', lhs, rhs, options)
end

function v_map(lhs, rhs, options)
	vim.api.nvim_set_keymap('v', lhs, rhs, options)
end

--------------------------------------------------------------------------------
-- Common Shortcut
--------------------------------------------------------------------------------
--- Control (⌃ / ctrl)
--- Alt/Options (⌥)
--- Super/Command (⌘ / window)
--- Shift (⇧)

-- Disable terminal clear scren (Cmd+k)
n_map('<Cmd>k', '<Nop>', { silent = true })
n_map('<Cmd-k>', '<Nop>', { silent = true })

-- Set space/del/backspace to Esc
n_map('<space>', '<Esc>', default_opts)
n_map('<Del>', '<Esc>', default_opts)
n_map('<BS>', '<Esc>', default_opts)
-- n_map('<C-space>', '<Esc>0', default_opts) -- Control+space

--------------------------------------------------------------------------------
-- Cursor movement
--------------------------------------------------------------------------------
-- Move cursor to the first character: (shift + h)
-- n_map('H', '^<ESC>', default_opts)

-- Move cursor to the last character: (shift + l)
-- n_map('L', '$<ESC>', default_opts)

-- Move cursor when insert mode: (control) + (h/j/k/l)
i_map('<C-h>', '<Left>', default_opts)
i_map('<C-j>', '<Down>', default_opts)
i_map('<C-k>', '<Up>', default_opts)
i_map('<C-l>', '<Right>', default_opts)

--------------------------------------------------------------------------------
-- Buffer and File
--------------------------------------------------------------------------------
-- Write or saving file: (⌥ or alt) + s
v_map('<M-s>', ':w<CR><ESC>', default_opts)
n_map('<M-s>', ':w<CR><ESC>', default_opts)
i_map('<M-s>', '<ESC>:w<CR><ESC>a', default_opts) -- allow writing in insert mode

-- Close current buffer: (⌥ or alt) + w
n_map('<M-w>', ':bw<ESC>', default_opts)

--------------------------------------------------------------------------------
-- Tab switching
--------------------------------------------------------------------------------
n_map('<TAB>', ':bnext<CR>', default_opts)
n_map('<S-TAB>', ':bprevious<CR>', default_opts)

--------------------------------------------------------------------------------
-- Indentation
--------------------------------------------------------------------------------
-- Tab Like (Right): Shift + >
v_map('>', '>gv', default_opts)
n_map('>', '>>_', default_opts)

-- Shift-Tab (Left): shift + <
v_map('<', '<gv', default_opts)
n_map('<', '<<_', default_opts)

--------------------------------------------------------------------------------
-- Insert Empty Line(s)
--------------------------------------------------------------------------------
-- Insert empty line on top cursor and up: Control+Alt+k
n_map('<M-C-K>', '<S-o><ESC>"_cc<ESC>', default_opts)

-- Insert empty line on bottom cursor and down: Control+Alt+j
n_map('<M-NL>', 'o<ESC>"_cc<ESC>', default_opts)

--------------------------------------------------------------------------------
-- Duplicate Line(s)
--------------------------------------------------------------------------------
-- Duplicate Line Up: Alt+Shift+k
n_map('<M-K>', '<ESC>^<ESC>"0yy "0P<ESC>', default_opts)
v_map('<M-K>', '<NOP>', default_opts)

-- Duplicate Line Down: Alt+Shift+j
n_map('<M-J>', '<ESC>^<ESC>"0yy "0p<ESC>', default_opts)
v_map('<M-J>', '<NOP>', default_opts)


--------------------------------------------------------------------------------
-- Delete Line(s)
--------------------------------------------------------------------------------
-- Remove(Cut) active line: Alt+d
n_map('<M-d>', '"_dd<ESC>', default_opts)
v_map('<M-d>', '"_d<ESC>', default_opts)

--------------------------------------------------------------------------------
-- Utilities
--------------------------------------------------------------------------------
-- Sort Lines Natural (Asc): space+s
-- v_map('<space>s', ':\'<,\'>!sort -f<CR><ESC>', default_opts)

--------------------------------------------------------------------------------
-- ...
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- ...
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- ...
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- ...
--------------------------------------------------------------------------------
