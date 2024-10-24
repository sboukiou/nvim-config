
-- Casual mappings
vim.keymap.set('n', '<C-s>', ':wa<CR>')
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("t", "<C-w>w", "<cmd><C-w>w<CR>")

vim.cmd("tnoremap <C-w> <C-\\><C-N><C-w>")
vim.cmd("tnoremap <A-j> <C-\\><C-N><C-w>j")
vim.cmd("tnoremap <C-k> <C-\\><C-N><C-w>k")
vim.cmd("tnoremap <A-l> <C-\\><C-N><C-w>l")


-- Telescope mappings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<space>ff',builtin.find_files)
vim.keymap.set('n', '<space>fg',builtin.live_grep)
vim.keymap.set('n', '<space>th',builtin.colorscheme)

-- Neotree
local fuzzy = require('neo-tree')
vim.keymap.set('n', '<space>gb', ':Neotree filesystem reveal current toggle<CR>')

-- Harpoon
local mark = require('harpoon.mark')
local ui = require('harpoon.ui')
vim.keymap.set('n', '<space>h', mark.add_file)
vim.keymap.set('n', '<space>m', ui.toggle_quick_menu)
vim.keymap.set('n', '<space>n', ui.nav_next)

-- Terminal toggle
vim.keymap.set('n', '<space>v', ':ToggleTerm size=20 direction=horizontal<CR>')
