vim.g.mapleader = " " -- leader key

vim.opt.wrap = false

-- tab settings
vim.opt.expandtab = true
vim.opt.tabstop = 2 --
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.number = true

vim.opt.guicursor = "n-v-c:block-Cursor"
vim.opt.colorcolumn = "80"

-- disable netrw ( for nvim tree: https://github.com/nvim-tree/nvim-tree.lua#setup )
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
