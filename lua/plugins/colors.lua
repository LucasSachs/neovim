return {
  {
    'sainnhe/gruvbox-material',

    lazy = false,
    priority = 1000,
  },
  {
    'nvim-lualine/lualine.nvim',

    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = { theme = 'gruvbox-material' }
  },
  {
    'folke/trouble.nvim',

    cmd = 'Trouble',
    opts = {},

    -- see https://github.com/folke/trouble.nvim
    keys = {
      { '<leader>d', '<cmd>Trouble diagnostics toggle focus=true<CR>' }
    }
  },
}
