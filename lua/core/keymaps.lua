vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local separator = package.config:sub(1, 1)

if separator == '/' then
  vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
  vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
  vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
  vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
end

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv')
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv')

vim.keymap.set('n', '<s-k>', ':echo "You have press <S-k>"')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<c-s>', '<cmd>w<CR>', { desc = 'Save file' })

vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-a>', 'mzK`z')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<c-u>', '<c-u>zz')

-- Comment API
vim.keymap.set('v', '<leader>/', '<ESC><cmd>lua require(\'Comment.api\').toggle.linewise(vim.fn.visualmode())<CR>')
vim.keymap.set('n', '<leader>/', function()
  require('Comment.api').toggle.linewise.current()
end)

vim.keymap.set('v', '<', '<gv', { desc = 'Indent line' })
vim.keymap.set('v', '>', '>gv', { desc = 'Indent line' })

-- NvimTree
vim.keymap.set('n', '<C-n>', '<cmd> NvimTreeToggle <CR>', { desc = 'Toggle open/close file exlorer' })
vim.keymap.set('n', '<leader>e', '<cmd> NvimTreeFocus <CR>', { desc = 'Focus on file explorer' })

-- NvimUndoTree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
