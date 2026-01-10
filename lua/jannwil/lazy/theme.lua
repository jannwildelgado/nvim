local gruber_dark = {
  -- Colors based on Gruber Darker palette
  bg = "#181818",
  fg = "#f4f4f4",
  yellow = "#ffdd33",
  quartz = "#95a99f",
  wisteria = "#9e95c7", -- Purple
  niagara = "#96a6c8", -- Blue
  red = "#f43841",
  green = "#73c936",
  black = "#000000",
}

local gruber_theme = {
  normal = {
    a = { fg = gruber_dark.black, bg = gruber_dark.yellow, gui = "bold" },
    b = { fg = gruber_dark.yellow, bg = gruber_dark.bg },
    c = { fg = gruber_dark.quartz, bg = gruber_dark.bg },
  },
  insert = {
    a = { fg = gruber_dark.black, bg = gruber_dark.fg, gui = "bold" },
    b = { fg = gruber_dark.fg, bg = gruber_dark.bg },
  },
  visual = {
    a = { fg = gruber_dark.black, bg = gruber_dark.niagara, gui = "bold" },
    b = { fg = gruber_dark.niagara, bg = gruber_dark.bg },
  },
  replace = {
    a = { fg = gruber_dark.black, bg = gruber_dark.red, gui = "bold" },
    b = { fg = gruber_dark.red, bg = gruber_dark.bg },
  },
  command = {
    a = { fg = gruber_dark.black, bg = gruber_dark.green, gui = "bold" },
    b = { fg = gruber_dark.green, bg = gruber_dark.bg },
  },
  inactive = {
    a = { fg = gruber_dark.quartz, bg = gruber_dark.bg },
    b = { fg = gruber_dark.quartz, bg = gruber_dark.bg },
    c = { fg = gruber_dark.quartz, bg = gruber_dark.bg },
  }
}

return {
  "blazkowolf/gruber-darker.nvim",
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup({
        options = {
          theme = gruber_theme,
          disabled_filetypes = { 'NvimTree', 'undotree', 'diff' },
          component_separators = { left = '', right = '' },
          section_separators = { left = '', right = '' },
          globalstatus = true,
        },
        sections = {
          lualine_a = { { 'mode', upper = true } },
          lualine_b = { { 'branch', icon = '' }, 'diff' },
          lualine_c = { { 'filename', file_status = true, path = 1 } },
          lualine_x = { 'diagnostics', 'filetype' },
          lualine_y = { 'progress' },
          lualine_z = { 'location' },
        },
      })
    end
  },
}
