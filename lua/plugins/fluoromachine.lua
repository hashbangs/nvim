return {
  'maxmx03/fluoromachine.nvim',
  config = function ()
    local fm = require 'fluoromachine'

    fm.setup {
      glow = true,
      theme = 'retrowave'
    }

    vim.cmd.colorscheme 'fluoromachine'
    -- colors override
    vim.api.nvim_set_hl(0, 'LineNr', { fg = "#599eff"} )
    end
}
