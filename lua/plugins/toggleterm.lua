return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = true,
  config = function()
    require ("toggleterm").setup({
      size = 10,
      open_mapping = [[<c-k>]]
    })
  end
}
