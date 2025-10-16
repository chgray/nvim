return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    options = {
      mode = 'buffers',
      themable = true,
      close_icon = 'x',
      path_components = 1,
    }
  end,
}
