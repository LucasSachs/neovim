return {
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_enable_italic = true
      vim.cmd.colorscheme('gruvbox-material')
    end
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
