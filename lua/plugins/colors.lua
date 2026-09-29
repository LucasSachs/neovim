return {
  {
    'sainnhe/gruvbox-material',

    lazy = false,
    priority = 1000,

    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_enable_italic = true
    end
  },
  {
    'nvim-lualine/lualine.nvim',

    dependencies = {
      'nvim-tree/nvim-web-devicons',
      'sainnhe/gruvbox-material',
    },

    opts = { options = { theme = 'gruvbox' } }
  },
  {
    'folke/trouble.nvim',

    cmd = 'Trouble',

    opts = {},

    keys = {
      {
	'<leader>d',
	'<cmd>Trouble diagnostics toggle focus=true<CR>'
      }
    }
  }
}
