return {
  {
    "loctvl842/monokai-pro.nvim",

    lazy = false,
    priority = 1000,
  },
  {
    'nvim-lualine/lualine.nvim',

    dependencies = {
      'nvim-tree/nvim-web-devicons',
      'loctvl842/monokai-pro.nvim'
    },

    opts = { options = { theme = 'monokai-pro' } }
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

