return {
  {
    "akinsho/bufferline.nvim",

    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },

    config = function()
      require("bufferline").setup({
	options = {
	  mode = "buffers",
	  always_show_bufferline = true,
	  separator_style = "slant",
	},
      })

      vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Próximo buffer" })
      vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Buffer anterior" })

      vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Fechar buffer atual" })
      vim.keymap.set("n", "<leader>br", "<cmd>BufferLineCloseRight<CR>", { desc = "Fechar buffers à direita" })
      vim.keymap.set("n", "<leader>bl", "<cmd>BufferLineCloseLeft<CR>", { desc = "Fechar buffers à esquerda" })
      vim.keymap.set("n", "<leader>bo", "<cmd>BufferLineCloseOthers<CR>", { desc = "Fechar outros buffers" })

      vim.keymap.set("n", "<PageUp>", "<Cmd>BufferLineMovePrev<CR>")
      vim.keymap.set("n", "<PageDown>", "<Cmd>BufferLineMoveNext<CR>")
    end,
  },
}
