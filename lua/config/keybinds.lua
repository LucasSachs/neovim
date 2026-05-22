vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

vim.keymap.set({'n', 'v', 'x'}, '<Up>', '<Nop>')
vim.keymap.set({'n', 'v', 'x'}, '<Down>', '<Nop>')
vim.keymap.set({'n', 'v', 'x'}, '<Left>', '<Nop>')
vim.keymap.set({'n', 'v', 'x'}, '<Right>', '<Nop>')

vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>p', '"+p')

