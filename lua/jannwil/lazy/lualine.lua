return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function ()
    require('lualine').setup({
      options = {
        disabled_filetypes = { 'NvimTree', 'undotree', 'diff' },
        icons_enabled = true,
        theme = 'nightfly',
        component_separators = '|',
        section_separators = ''
      }
    })
  end
}
