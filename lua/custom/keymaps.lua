local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)

vim.keymap.set('n', '<leader>e', ':edit ~/.config/nvim/init.lua<CR>')

-- Window splits
vim.keymap.set('n', '<leader>v', '<C-w>v', { noremap = true, silent = true, desc = 'Split window [V]ertically' })
vim.keymap.set('n', '<leader>h', '<C-w>s', { noremap = true, silent = true, desc = 'Split window [H]orizontally' })

-- vim.keymap.set('n', '<leader>se', '<C-w>=', opts)
-- vim.keymap.set('n', '<leader>xs', ':close<CR>', opts)
