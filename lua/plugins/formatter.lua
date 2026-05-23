return {
  {
    'stevearc/conform.nvim',
    config = function()
      local conform = require('conform')

      conform.setup({
	formatters_by_ft = {
	  typescript = { 'biome', 'eslint', stop_after_first = true },
	},
	format_on_save = {
	  timeout_ms = 500,
	  lsp_format = 'fallback'
	}
      })
    end
  }
}
