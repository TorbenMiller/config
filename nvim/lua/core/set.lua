vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.softtabstop = 2

vim.opt.termguicolors = true

vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 50

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>b", vim.cmd.Ex)
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set('n', '\\', ':noh<CR>', { silent = true })
vim.keymap.set('n', '<leader>c', '<Plug>(GitGutterNextHunk)', { silent = true, noremap = true })
vim.keymap.set('n', '<leader>C', '<Plug>(GitGutterPrevHunk)', { silent = true, noremap = true })
vim.keymap.set('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })


vim.env.LANG = 'en_US.UTF-8'

-- Enable clipboard for macOS
vim.cmd('set clipboard+=unnamedplus')

-- Use the system clipboard for all operations
vim.opt.clipboard:append("unnamedplus")

vim.g.netrw_preview = 1
vim.g.netrw_liststyle = 3
vim.g.netrw_winsize = 30

