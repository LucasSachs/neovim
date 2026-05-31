return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = { ensure_installed = { 'biome', 'jsonls', 'lua_ls', 'ts_ls' }},
    dependencies = { { "mason-org/mason.nvim", opts = {} } },
  },
  {
    'saghen/blink.cmp',
    version = '1.*',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = { preset = 'default' },
      appearance = { nerd_font_variant = 'mono' },
      sources = { default = { 'lsp', 'path', 'snippets', 'buffer' } },
      fuzzy = { implementation = "prefer_rust_with_warning" },

      completion = {
	ghost_text = { enabled = true },
	menu = { draw = { columns = { { 'kind_icon', 'kind', 'label', 'label_description', 'source_name', gap = 1 } } }},
	documentation = {
	  auto_show = true,
	  auto_show_delay_ms = 500,
	  treesitter_highlighting = true
	},
      },

    },

    opts_extend = { "sources.default" }
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = { 'b0o/schemastore.nvim' },
    config = function()
      local blink = require('blink.cmp')

      vim.lsp.config('lua_ls', {
	capabilites = blink.get_lsp_capabilities(),
        settings = {
          Lua = {
            diagnostics = {
              globals = { 'vim' },
            },
          },
        },
      })

      vim.lsp.config('ts_ls', {
	capabilities = blink.get_lsp_capabilities(),
	inlayHints = {
	  includeInlayParameterNameHints = "all",
	  includeInlayVariableTypeHints = true,
	}
      })

      vim.lsp.config('jsonls', {
	capabilities = blink.get_lsp_capabilities(),
	settings = {
	  json = {
	    schemas = require('schemastore').json.schemas(),
	    validate = { enable = true },
	  },
	},
      })

      vim.lsp.config('biome', { capabilites = blink.get_lsp_capabilities() })
    end
  },
}
