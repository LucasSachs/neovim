vim.keymap.set('', '<Up>', '<Nop>')
vim.keymap.set('', '<Down>', '<Nop>')
vim.keymap.set('', '<Left>', '<Nop>')
vim.keymap.set('', '<Right>', '<Nop>')

vim.keymap.set('n', '<leader>e', ':NvimTreeOpen<CR>')

vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set({ 'n', 'v' }, '<leader>Y', [["+Y]])
vim.keymap.set({ 'n' }, '<leader>p', [["+p]])
vim.keymap.set({ 'n' }, '<leader>P', [["+P]])

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<C-o>', 'o<Esc>')
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation)
vim.keymap.set('n', 'gr', vim.lsp.buf.references)
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR><Esc>')
vim.keymap.set('n', '<leader>h', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set('n', '<leader>b', '<C-o>')
vim.keymap.set('n', '<leader>n', '<C-i>')

vim.keymap.set('n', 'x', '"_x')

vim.keymap.set('n', '<C-ScrollWheelUp>', function() vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1 end)
vim.keymap.set('n', '<C-ScrollWheelDown>', function() vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1 end)

vim.keymap.set('n', '<leader>ih', function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled()) end, { desc = 'Toggle Inlay Hints' })

