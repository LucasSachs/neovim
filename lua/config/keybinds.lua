vim.keymap.set({'n', 'v', 'x'}, '<Up>', '<Nop>')
vim.keymap.set({'n', 'v', 'x'}, '<Down>', '<Nop>')
vim.keymap.set({'n', 'v', 'x'}, '<Left>', '<Nop>')
vim.keymap.set({'n', 'v', 'x'}, '<Right>', '<Nop>')

vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>Y', '"+Y')

vim.keymap.set('v', '<leader>p', '"+p')
vim.keymap.set('v', '<leader>P', '"+P')

vim.keymap.set('n', '<leader>e', ':NvimTreeOpen position=right <CR>')

