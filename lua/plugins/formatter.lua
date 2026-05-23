return {
  {
    'stevearc/conform.nvim',
    config = function()
      local conform = require('conform')

      conform.setup({
	formatters_by_ft = {
	  typescript = { 'biome', 'eslint', stop_after_first = true },
	},
      })

      vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "ts",
	callback = function(args)
	  require("conform").format({ bufnr = args.buf })
	end,
      })
    end
  }
}
