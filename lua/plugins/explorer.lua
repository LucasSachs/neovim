return {
  {
    'nvim-tree/nvim-tree.lua',

    config = function()
      local nvimtree = require('nvim-tree').setup({
	sync_root_with_cwd = true,
	view = { side = 'right' },
      })
    end
  }
}
