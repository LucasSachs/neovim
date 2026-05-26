return {
  {
    'mason-org/mason.nvim',
    opts = {}
  },
  {
    'saghen/blink.cmp',
    version = '1.*',

    ---@module 'blink.cmp'
    opts = {
      -- All presets have the following mappings:
      -- C-space: Open menu or open docs if already open
      -- C-n/C-p or Up/Down: Select next/previous item
      -- C-e: Hide menu
      -- C-k: Toggle signature help (if signature.enabled = true)
      --
      -- See :h blink-cmp-config-keymap for defining your own keymap
      keymap = { preset = 'default' },
      appearance = { nerd_font_variant = 'mono' },

      -- (Default) Only show the documentation popup when manually triggered
      -- completion = { documentation = { auto_show = false } },

      -- Default list of enabled providers defined so that you can extend it
      -- elsewhere in your config, without redefining it, due to `opts_extend`
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

      vim.lsp.config('ts_ls', { capabilities = blink.get_lsp_capabilities() })

      vim.lsp.config('jsonls', {
	capabilities = blink.get_lsp_capabilities(),
	settings = {
	  json = {
	    schemas = require('schemastore').json.schemas(),
	    validate = { enable = true },
	  },
	},
      })

      vim.lsp.enable('jsonls')
      vim.lsp.enable('lua_ls')
      vim.lsp.enable('ts_ls')
    end,
  },
}
