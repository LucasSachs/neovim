return {
  {
    'nvim-tree/nvim-tree.lua',

    config = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
      vim.opt.termguicolors = true

      require('nvim-tree').setup({
	sync_root_with_cwd = true,
	respect_buf_cwd = true,
	filters = { custom = { '^cache$', '^dist$' } },
	update_focused_file = { enable = true },
	renderer = { icons = { padding = '  ' } },
	view = {
	  side = 'right',
	  width = 75,
	},
      })

      local api = require('nvim-tree.api')

      vim.keymap.set('n', '<leader>w', api.node.collapse)
    end
  }
}
