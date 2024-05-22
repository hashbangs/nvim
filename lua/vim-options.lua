-- set indentation to tab = 2 spaces
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
-- hybrid line numbers
vim.cmd("set relativenumber")
vim.cmd("set number")

-- vim.cmd("set autochdir")
vim.g.mapleader = " " -- leader = space

vim.keymap.set('n', '<leader>l', ':Lazy<CR>', {})
