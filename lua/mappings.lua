
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
-- vim.keymap.set('n', '<space>gb', ':Ex<CR>')
vim.keymap.set('n', '<space>gb', ':Neotree position=current toggle<CR>')

-- Harpoon
local mark = require('harpoon.mark')
local ui = require('harpoon.ui')
vim.keymap.set('n', '<space>h', mark.add_file)
vim.keymap.set('n', '<space>m', ui.toggle_quick_menu)
vim.keymap.set('n', '<M-m>', ui.nav_next)

-- Lsp mappings
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})


-- Terminal toggle
local terminal = function()
	vim.cmd('vert term')
	vim.cmd('set nonumber')
	vim.cmd('set norelativenumber')
	vim.cmd('startinsert')
	vim.cmd('wincmd r')
	vim.api.nvim_set_hl(0, 'WinSeparator', { fg = 'gray', bg = 'none', bold = true })
end

vim.keymap.set('n', '<space>v',terminal)
