return {
  {
    "folke/todo-comments.nvim",

    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section on https://github.com/folke/todo-comments.nvim

      vim.keymap.set('n', '<leader>ft', '<cmd>TodoTelescope<cr>')
    }
  }
}
