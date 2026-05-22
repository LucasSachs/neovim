vim.keymap.set({'n', 'v', 'x'}, '<Up>', '<Nop>')
vim.keymap.set({'n', 'v', 'x'}, '<Down>', '<Nop>')
vim.keymap.set({'n', 'v', 'x'}, '<Left>', '<Nop>')
vim.keymap.set({'n', 'v', 'x'}, '<Right>', '<Nop>')

vim.keymap.set('n', '<leader>e', ':NvimTreeOpen<CR>')

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set({"n", "v"}, "<leader>Y", [["+Y]])
vim.keymap.set({"n"}, "<leader>p", [["+p]])
vim.keymap.set({"n"}, "<leader>P", [["+P]])

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-o>", "o<Esc>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR><Esc>')
vim.keymap.set("n", "<leader>h", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

