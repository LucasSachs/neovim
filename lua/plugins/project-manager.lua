return {
  {
    "ahmedkhalf/project.nvim",

    config = function()
      require("project_nvim").setup({
	detection_methods = { "pattern", "lsp" },
	patterns = { ".git", "package.json", "tsconfig.json", ".nvmrc" },
	silent_chdir = true,
	manual_mode = false,
      })

      vim.keymap.set("n", "<leader>fp", "<cmd>Telescope projects<cr>")
    end,
  },
}
