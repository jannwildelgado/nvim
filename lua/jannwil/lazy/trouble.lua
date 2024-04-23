return {
  'folke/trouble.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {},
  config = function()
    -- vim.keymap.set('n', '<leader>xx', function ()
    --   require('trouble').toggle()
    -- end)
    -- vim.keymap.set('n', '<leader>xq', function()
    --   require('trouble').toggle('quickfix')
    -- end)
    require('trouble').setup({
      icons = false
    })

    vim.keymap.set('n', '<leader>tt', function()
      require('trouble').toggle()
    end)

    vim.keymap.set('n', '[t', function()
      require('trouble').next({ skip_groups = true, jump = true })
    end)

    vim.keymap.set('n', ']t', function()
      require('trouble').previous({ skip_groups = true, jump = true })
    end)
  end
}
