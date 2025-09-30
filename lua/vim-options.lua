-- persistent colorscheme
vim.cmd 'colorscheme vim'
vim.api.nvim_set_hl(0, 'LineNr', { fg = "#527386"} )

-- set indentation to tab = 2 spaces
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
-- hybrid line numbers
vim.cmd("set relativenumber")
vim.cmd("set number")

-- user defined commands
-- barbar
vim.cmd("command! C :BufferClose")
vim.cmd("command! CA :BufferCloseAllButVisible")
vim.cmd("command! R :BufferRestore")

-- LEADER
vim.g.mapleader = " "

vim.keymap.set('n', '<leader>u', ':Lazy update<CR>', {})
-- windows
vim.keymap.set('n', '<leader>n', ':rightbelow vnew<CR>', {})
vim.keymap.set('n', '<leader>t', ':enew<CR>', {})
vim.keymap.set('n', '<leader>e', ':Explore<CR>', {})
-- buffers
vim.keymap.set('n', '<leader>l', ':bn<CR>',{}) -- next
vim.keymap.set('n', '<leader>h', ':bp<CR>',{}) -- previous

vim.keymap.set("n", "<leader>y", function()
	if vim.diagnostic.is_enabled() then
		vim.diagnostic.enable(false)
	else
		vim.diagnostic.enable()
	end
end)
