vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- local separator = package.config:sub(1, 1)

-- if separator == '/' then
  -- vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
  -- vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
  -- vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
  -- vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
-- end

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv')
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<c-s>', '<cmd>w<CR>', { desc = 'Save file' })

vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-a>', 'mzK`z')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('n', '<C-a>', 'gg<S-v>G')

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<c-u>', '<c-u>zz')

vim.keymap.set('v', '<', '<gv', { desc = 'Indent line' })
vim.keymap.set('v', '>', '>gv', { desc = 'Indent line' })

-- NvimTree
vim.keymap.set('n', '<C-n>', '<cmd> NvimTreeToggle <CR>', { desc = 'Toggle open/close file exlorer' })
vim.keymap.set('n', '<leader>e', '<cmd> NvimTreeFocus <CR>', { desc = 'Focus on file explorer' })

-- NvimUndoTree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

-- NvimTrouble 
vim.keymap.set('n', '<leader>xx', '<cmd>TroubleToggle workspace_diagnostics<CR>', { desc = 'Workspace Diagnostics' })
vim.keymap.set('n', '<leader>xd', '<cmd>TroubleToggle document_diagnostics<CR>', { desc = 'Document Diagnostics' })
vim.keymap.set('n', '<leader>xq', '<cmd>TroubleToggle quickfix<CR>', { desc = 'Quickfix List (Trouble Diagnostics)' })

vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = vim.api.nvim_create_augroup('YankHighlight', { clear = true }),
  pattern = '*'
})
