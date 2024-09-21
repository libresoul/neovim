vim.api.nvim_create_autocmd("BufReadPost", {
  callback = function()
      if vim.bo.readonly then
        vim.cmd('PackerLoad suda.vim') -- Load the plugin
      end
    end
})
