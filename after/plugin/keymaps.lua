-- Disable arrow keys in normal mode (forces hjkl habit)
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Open netrw file explorer
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Buffer navigation (Alt + h/l)
vim.keymap.set('n', '<A-h>', vim.cmd.bprevious)
vim.keymap.set('n', '<A-l>', vim.cmd.bNext)

-- Visual: move lines up/down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
