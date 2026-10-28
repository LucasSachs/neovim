-- Styling
vim.o.guifont = "VictorMono NFM:h16"
vim.opt.termguicolors = true
vim.cmd.colorscheme('monokai-pro-spectrum')

-- Globals
vim.g.neovide_cursor_animation_length = 0
vim.g.neovide_opacity = 0.9
vim.g.neovide_normal_opacity = 0.9
vim.g.mapleader = " "
vim.g.nvim_tree_respect_buf_cwd = 1

-- Vim options
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.numberwidth = 4
vim.opt.relativenumber = true
vim.opt.shiftwidth = 2
vim.opt.wrap = false
vim.opt.autoindent = false
vim.opt.showmode = false
vim.opt.ignorecase = true
vim.opt.title = true
vim.opt.splitkeep = 'screen'

-- Diagnostics
vim.diagnostic.config({ virtual_text = true })

-- LSP
vim.lsp.inlay_hint.enable(true)

