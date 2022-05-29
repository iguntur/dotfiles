-- Set Leader to a comma - <leader>
vim.g.mapleader = ','
vim.g.maplocalleader = ','

--------------------------------------------------------------------------------
-- Map Helper Function
--------------------------------------------------------------------------------
local default_opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

local function n_map(lhs, rhs, options)
	keymap('n', lhs, rhs, options)
end

local function i_map(lhs, rhs, options)
	keymap('i', lhs, rhs, options)
end

local function v_map(lhs, rhs, options)
	keymap('v', lhs, rhs, options)
end

local function t_map(lhs, rhs, options)
	keymap('t', lhs, rhs, options)
end

local function x_map(lhs, rhs, options)
	keymap('x', lhs, rhs, options)
end

--------------------------------------------------------------------------------
-- Common Shortcut
--------------------------------------------------------------------------------
--- Control (⌃ / ctrl)
--- Alt/Options (⌥)
--- Super/Command (⌘ / window)
--- Shift (⇧)

-- Allow gf to open non-existent files
keymap('', 'gf', ':edit <cfile><CR>', { silent = true })

-- Reload (source nvim.config): F5
n_map('<F5>', ':source $HOME/.config/nvim/init.lua<CR><Esc>', { silent = true })

-- Disable Arrow-keys
for _, k in pairs({ '<Up>', '<Down>', '<Left>', '<Right>' }) do
	n_map(k, '<Nop>', default_opts)
	v_map(k, '<Nop>', default_opts)
end

-- Disable terminal clear scren (Cmd+k)
keymap('', '<Cmd>k', '<Nop>', { silent = true })
keymap('', '<Cmd-k>', '<Nop>', { silent = true })

n_map('q:', '<Nop>', default_opts) -- disable unexpected macro

-- Set space/del/backspace to Esc
n_map('<space>', '<Esc>', default_opts)
n_map('<Del>', '<Esc>', default_opts)
n_map('<BS>', '<Esc>', default_opts)
-- n_map('<C-space>', '<Esc>0', default_opts) -- Control+space

-- Clear the highlight search
n_map('<Esc>', ':nohlsearch<CR><Esc>', default_opts)

--------------------------------------------------------------------------------
-- Text Editing
--------------------------------------------------------------------------------
-- Copy-Paste
v_map('p', '"_dP', default_opts) -- keep the "yank" value

-- Pair Space
i_map('<M-Space>', '<Esc>2a<space><Esc>i', default_opts)
n_map('<M-Space>', '<Esc>2a<space><Esc>i', default_opts)

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
v_map('<M-s>', '<ESC>:w<CR><ESC>', default_opts)
n_map('<M-s>', ':w<CR><ESC>', default_opts)
i_map('<M-s>', '<ESC>:w<CR><ESC>a', default_opts) -- allow writing in insert mode

-- Close current buffer: (⌥ or alt) + w
-- n_map('<M-w>', ':bw<ESC>', default_opts)
n_map('<M-w>', ':BufferClose<CR>', default_opts)

--------------------------------------------------------------------------------
-- Navigate buffers
--------------------------------------------------------------------------------
n_map('<TAB>', ':bnext<CR>', default_opts) -- tab
n_map('<S-TAB>', ':bprevious<CR>', default_opts) -- shift+tab

--------------------------------------------------------------------------------
-- Indentation
--------------------------------------------------------------------------------
-- indent to the right: Shift + >
v_map('>', '>gv', default_opts)
n_map('>', '>>_', default_opts)

-- indent to the left: shift + <
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
-- Window
--------------------------------------------------------------------------------
-- Window Navigation
n_map('<C-h>', '<C-w>h', default_opts) -- move cursor to "left" window
n_map('<C-j>', '<C-w>j', default_opts) -- move cursor to "bottom" window
n_map('<C-k>', '<C-w>k', default_opts) -- move cursor to "top" window
n_map('<C-l>', '<C-w>l', default_opts) -- move cursor to "right" window

--------------------------------------------------------------------------------
-- Resize window (Ctrl-Shift-<Arrow_Keys>)
--------------------------------------------------------------------------------
-- " Up
n_map('<C-S-Up>', ':resize +1<CR>', default_opts)
-- i_map('<C-S-Up>', ':resize +1<CR>', default_opts)
-- v_map('<C-S-Up>', ':resize +1<CR>', default_opts)
-- c_map('<C-S-Up>', ':resize +1<CR>', default_opts)

-- " Down
n_map('<C-S-Down>', ':resize -1<CR>', default_opts)
-- i_map('<C-S-Down>', ':resize -1<CR>', default_opts)
-- v_map('<C-S-Down>', ':resize -1<CR>', default_opts)
-- c_map('<C-S-Down>', ':resize -1<CR>', default_opts)

-- " Left
n_map('<C-S-Left>', ':vertical resize -1<CR>', default_opts)
-- i_map('<C-S-Left>', ':vertical resize -1<CR>', default_opts)
-- v_map('<C-S-Left>', ':vertical resize -1<CR>', default_opts)
-- c_map('<C-S-Left>', ':vertical resize -1<CR>', default_opts)

-- " Right
n_map('<C-S-Right>', ':vertical resize +1<CR>', default_opts)
-- i_map('<C-S-Right>', ':vertical resize +1<CR>', default_opts)
-- v_map('<C-S-Right>', ':vertical resize +1<CR>', default_opts)
-- c_map('<C-S-Right>', ':vertical resize +1<CR>', default_opts)

--------------------------------------------------------------------------------
-- Terminal
--------------------------------------------------------------------------------
-- Terminal navigation
t_map('<C-h>', '<C-\\><C-N><C-w>h', default_opts)
t_map('<C-j>', '<C-\\><C-N><C-w>j', default_opts)
t_map('<C-k>', '<C-\\><C-N><C-w>k', default_opts)
t_map('<C-l>', '<C-\\><C-N><C-w>l', default_opts)

--------------------------------------------------------------------------------
-- ...
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- ...
--------------------------------------------------------------------------------
