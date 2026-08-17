return {
  {
    'nvim-tree/nvim-tree.lua',

    config = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
      vim.opt.termguicolors = true

      require('nvim-tree').setup({
	sync_root_with_cwd = true,
	view = {
	  side = 'right',
	  width = 60
	},
	respect_buf_cwd = true,
	filters = { custom = { '^cache$', '^dist$' } },
	update_focused_file = { enable = true },
	renderer = { icons = { padding = '  ' } },
	filesystem_watchers = {
	  ignore_dirs = { 'dist' }
	}
      })

      local api = require('nvim-tree.api')

      vim.keymap.set('n', '<leader>w', api.node.collapse)
    end
  }
}
