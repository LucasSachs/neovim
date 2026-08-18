return {
  {
    'stevearc/conform.nvim',

    opts = {
      formatters_by_ft = {
	typescript = { 'biome', stop_after_first = true },
	typescriptreact = { 'biome', stop_after_first = true },
      },
      format_on_save = {
	timeout_ms = 500,
	lsp_format = 'never',
      }
    }
  }
}
