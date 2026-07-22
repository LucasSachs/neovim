return {
  {
    'nvim-tree/nvim-tree.lua',

    config = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
      vim.opt.termguicolors = true

      require('nvim-tree').setup({
	sync_root_with_cwd = true,
	view = { side = 'right' },
	respect_buf_cwd = true,
	update_focused_file = {
	  enable = true,
	  update_root = true,
	},
      })

      local api = require('nvim-tree.api')

      vim.keymap.set('n', '<leader>w', api.node.collapse)
    end
  }
}
