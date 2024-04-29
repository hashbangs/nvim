-- set indentation to tab = 2 spaces
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")
vim.g.mapleader = " " -- leader = space

vim.keymap.set('n', '<leader>l', ':Lazy<CR>', {})
