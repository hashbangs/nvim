return
  {
  "lervag/vimtex",
  lazy = false,
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    vim.g.vimtex_view_method = "zathura"
    vim.g.vimtex_syntax_enabled = 0
  end
}
