return {
  {
    'mason-org/mason.nvim',
    opts = {}
  },
  {
    'saghen/blink.cmp',
    version = '1.*',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = { preset = 'default' },
      appearance = { nerd_font_variant = 'mono' },

      completion = {
	ghost_text = { enabled = true },
	documentation = {
	  auto_show = true,
	  auto_show_delay_ms = 500,
	  treesitter_highlighting = true
	},
	menu = {
	  draw = {
	    columns = {
	      { 'kind_icon', 'kind', 'label', 'label_description', 'source_name', gap = 1 },
	    },
	  },
	},
      },

      sources = { default = { 'lsp', 'path', 'snippets', 'buffer' } },
      fuzzy = { implementation = "prefer_rust_with_warning" }
    },
    opts_extend = { "sources.default" }
  },
  {
    'b0o/schemastore.nvim',
  },
  {
    'neovim/nvim-lspconfig',
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

      vim.lsp.enable('biome')
      vim.lsp.enable('jsonls')
      vim.lsp.enable('lua_ls')
      vim.lsp.enable('ts_ls')
    end
  },
}
