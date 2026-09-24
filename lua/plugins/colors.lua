return {
  {
    'ellisonleao/gruvbox.nvim',

    config = true,
    priority = 1000,

    opts = {
      terminal_colors = true, -- add neovim terminal colors
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
	strings = true,
	emphasis = true,
	comments = true,
	operators = false,
	folds = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      inverse = true, -- invert background for search, diffs, statuslines and errors
      contrast = "", -- can be "hard", "soft" or empty string
      palette_overrides = {},
      overrides = {},
      dim_inactive = false,
      transparent_mode = false,
    }
    },
  {
    'nvim-lualine/lualine.nvim',

    dependencies = {
      'nvim-tree/nvim-web-devicons',
      'ellisonleao/gruvbox.nvim'
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
