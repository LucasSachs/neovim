-- Styling
vim.o.guifont = "Inconsolata Nerd Font:h18"
vim.opt.termguicolors = true
vim.cmd.colorscheme('gruvbox-material')

-- Globals
vim.g.neovide_cursor_animation_length = 0
vim.g.mapleader = " "
vim.g.nvim_tree_respect_buf_cwd = 1

-- Vim options
vim.opt.number = true
vim.opt.cursorline = false
vim.opt.relativenumber = true
vim.opt.shiftwidth = 2
vim.opt.wrap = false
vim.opt.autoindent = true

-- Neovide
vim.g.neovide_opacity = 0.95
vim.g.neovide_normal_opacity = 0.95

-- Diagnostics
vim.diagnostic.config({ virtual_text = true })

-- LSP
vim.lsp.inlay_hint.enable(true)

