vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local map = vim.keymap.set

-- map.set('n', '<leader>-', vim.cmd.Ex)
map('n', '<leader>pv', vim.cmd.Ex)
map('n', '<leader>h', ':nohlsearch<CR>')

map('v', 'J', ':m \'>+1<CR>gv=gv')
map('v', 'K', ':m \'<-2<CR>gv=gv')

map('n', 'J', 'mzJ`z')
map('n', '<C-a>', 'mzK`z')
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')

map('n', '<C-a>', 'gg<S-v>G')
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')
map('n', '<leader>f', vim.lsp.buf.format)

map('v', '<', '<gv', {})
map('v', '>', '>gv', {})

map('n', '<leader>p', '"+p')

-- map({"n", "v"}, "<leader>y", [["+y]])
-- map("n", "<leader>Y", [["+Y]])

-- Diagnostic keymaps
map('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
map('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
map('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
map('n', '<leader>xd', '<cmd>TroubleToggle document_diagnostics<CR>', { desc = 'Document Diagnostics' })

map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

map('n', '<leader>tc', ':tabnew<CR>')
map('n', '<Tab>', ':tabnext<CR>')
map('n', '<S-Tab>', ':tabprev<CR>')
map('n', '<C-w>', ':tabclose<CR>')
