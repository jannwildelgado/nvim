require('nvim-tree').setup {}

vim.keymap.set('n', '<leader>n', '<cmd> NvimTreeToggle <CR>', { desc = 'Toggle Open/Close File Exlorer'} )
vim.keymap.set('n', '<leader>e', '<cmd> NvimTreeFocus <CR>', { desc = 'Focus on file explorer' } )
