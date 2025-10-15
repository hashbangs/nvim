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
    -- neovim 0.11
    "neovim/nvim-lspconfig",
    lazy = true,
    init = function()
      local lspConfigPath = require("lazy.core.config").options.root .. "/nvim-lspconfig"
      vim.opt.runtimepath:prepend(lspConfigPath)
      vim.lsp.enable({"bashls", "clangd", "cssls", "html", "hyprls", "jsonls", "ltex", "lua_ls", "remark_ls", "texlab"})
    end,

    -- remove the 'undefined global vim' warning
    vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" }}}}})
  }
}
