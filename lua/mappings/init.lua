local map = vim.keymap.set
local opts = { noremap = true, silent = true }

local builtin = require('telescope.builtin')
map('n', '<leader>ff', builtin.find_files, {}, opts)
map('n', '<leader>fg', builtin.live_grep, {}, opts)
map('n', '<leader>fb', builtin.buffers, {}, opts)
map('n', '<leader>fh', builtin.help_tags, {}, opts)

map('n', '<leader>e', ':NvimTreeToggle<CR>', {}, opts)

map('n', '<C-h>', '<C-w>h', {}, opts)
map('n', '<C-j>', '<C-w>j', {}, opts)
map('n', '<C-k>', '<C-w>k', {}, opts)
map('n', '<C-l>', '<C-w>l', {}, opts)
