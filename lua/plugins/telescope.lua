return {
  'nvim-telescope/telescope.nvim',

  version = '*',

  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',

      build = 'make',
    },
  },

  config = function ()
    local builtin = require('telescope.builtin')

    if vim.fn.has('win32') == 1 then
      local actions = require('telescope.actions')
      local action_state = require('telescope.actions.state')

      local function normalize_path_before(action)
        return function(prompt_bufnr)
          local entry = action_state.get_selected_entry()
          local path = entry and (entry.path or entry.filename)

          -- Backslashes before parentheses are treated as escapes by :edit.
          if type(path) == 'string' then
            entry.path = path:gsub('\\', '/')
          end

          return action(prompt_bufnr)
        end
      end

      local mappings = {
        ['<CR>'] = normalize_path_before(actions.select_default),
        ['<C-x>'] = normalize_path_before(actions.select_horizontal),
        ['<C-v>'] = normalize_path_before(actions.select_vertical),
        ['<C-t>'] = normalize_path_before(actions.select_tab),
      }

      require('telescope').setup({
        defaults = {
          mappings = { i = mappings, n = mappings },
        },
      })
    end

    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
  end
}
