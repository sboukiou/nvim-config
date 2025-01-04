vim.opt.rnu = true
vim.opt.nu = true
vim.cmd.colorscheme 'habamax'

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.o.fillchars = 'vert:┃'

vim.opt.cursorline = true
vim.api.nvim_set_hl(0, 'CursorLine', {
})
vim.api.nvim_create_autocmd('InsertEnter', {
    callback = function()
        vim.opt.cursorline = false
    end
})

vim.diagnostic.config({
    -- virtual_text = false,
	underline = false
})

-- Enable when leaving insert mode
vim.api.nvim_create_autocmd('InsertLeave', {
    callback = function()
        vim.opt.cursorline = true
    end
})

-- Transparent background
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' })
vim.api.nvim_set_hl(0, 'Pmenu', { bg = 'none' })

vim.cmd("set guicursor=n-v-c-i:block")
vim.cmd("set grepprg=rg\\ -H\\ --no-heading\\ --vimgrep")

