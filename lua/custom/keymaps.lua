local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)

vim.keymap.set('n', '<leader>e', ':edit ~/.config/nvim/init.lua<CR>')

vim.keymap.set('n', '<F1>', function()
  local actions = {
    {
      label = 'Toggle file explorer',
      run = function()
        vim.cmd 'Neotree toggle'
      end,
    },
    {
      label = 'Copy filename to clipboard',
      run = function()
        local filename = vim.fn.expand '%:p'
        if filename == '' then
          vim.notify('No filename for current buffer', vim.log.levels.WARN)
          return
        end

        vim.fn.setreg('+', filename)
        vim.notify('Copied filename: ' .. filename)
      end,
    },
    {
      label = 'Help',
      run = function()
        vim.cmd 'Telescope help_tags'
      end,
    },
  }

  vim.ui.select(actions, {
    prompt = 'Menu',
    format_item = function(item)
      return item.label
    end,
  }, function(choice)
    if choice then choice.run() end
  end)
end, { desc = 'Open menu' })

-- Window splits
vim.keymap.set('n', '<leader>v', '<C-w>v', { noremap = true, silent = true, desc = 'Split window [V]ertically' })
vim.keymap.set('n', '<leader>h', '<C-w>s', { noremap = true, silent = true, desc = 'Split window [H]orizontally' })

-- vim.keymap.set('n', '<leader>se', '<C-w>=', opts)
-- vim.keymap.set('n', '<leader>xs', ':close<CR>', opts)
