return {
  {
    "ahmedkhalf/project.nvim",

    config = function()
      require("project_nvim").setup({
	silent_chdir = true,
	manual_mode = true,
      })

      vim.keymap.set("n", "<leader>fp", "<cmd>Telescope projects<cr>", { desc = "List projects" })
      vim.keymap.set("n", "<leader>A", function() require("project_nvim.project").add_project_manually() end, { desc = "Add project" })
    end,
  },
}
