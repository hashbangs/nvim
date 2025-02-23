return
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
      -- command :call to run the install (yarn)  
    end,
      -- specify browser
    config = function()
      vim.cmd([[do FileType]])
      vim.cmd([[
         function OpenMarkdownPreview (url)
            let cmd = "librewolf --new-window " . shellescape(a:url) . " &"
            silent call system(cmd)
         endfunction
      ]])
      vim.g.mkdp_browserfunc = "OpenMarkdownPreview"
   end,
}
