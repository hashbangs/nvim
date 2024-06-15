return {
  {
  "williamboman/mason.nvim",
  config = function()
    require("mason").setup()
  end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd", "bashls", "cssls", "html" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      -- define 'vim' as a global to remove warnings
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = {
              globals = {
                'vim'
              }
            }
          }
        }
      })

      lspconfig.clangd.setup({})
      lspconfig.bashls.setup({})
      lspconfig.cssls.setup({})
      lspconfig.html.setup({})

    end
  }
}
