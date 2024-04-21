return {
  'folke/trouble.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {},
  config = function()
    -- vim.keymap.set('n', '<leader>xx', '<cmd>TroubleToggle workspace_diagnostics<CR>', { desc = 'Workspace Diagnostics' })
    -- vim.keymap.set('n', '<leader>xd', '<cmd>TroubleToggle document_diagnostics<CR>', { desc = 'Document Diagnostics' })
    -- vim.keymap.set('n', '<leader>xq', '<cmd>TroubleToggle quickfix<CR>', { desc = 'Quickfix List (Trouble Diagnostics)' })

    vim.keymap.set('n', '<leader>xx', function ()
      require('trouble').toggle()
    end)
    vim.keymap.set('n', '<leader>xq', function()
      require('trouble').toggle('quickfix')
    end)
  end
}
