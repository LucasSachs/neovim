return {
  {
    'mason-org/mason.nvim',
    opts = {}
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      vim.lsp.enable('ts_ls')
      vim.lsp.enable('lua_ls')
    end,
  },
}
