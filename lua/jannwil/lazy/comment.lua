return {
  'numToStr/Comment.nvim',
  lazy = false,
  opts = {},
  config = function ()
    vim.keymap.set('v', '<leader>/', '<ESC><cmd>lua require(\'Comment.api\').toggle.linewise(vim.fn.visualmode())<CR>')
    vim.keymap.set('n', '<leader>/', function()
      require('Comment.api').toggle.linewise.current()
    end)
  end
}
