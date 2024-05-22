return {
   "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", 
      "MunifTanjim/nui.nvim",
    },
    config = function()
      vim.keymap.set('n', '<leader>n', ':Neotree filesystem toggle left<CR>', {})
    
    require("neo-tree").setup({
      enable_git_status = false,
      window = {
        position = "left",
        width = 25,
      },
    })
    end
}
