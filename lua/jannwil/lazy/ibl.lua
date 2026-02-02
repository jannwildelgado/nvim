return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {},
  config = function(_, opts)
    -- Gruber Dark–inspired indent colors
    vim.api.nvim_set_hl(0, "IblIndent", { fg = "#404040" })      -- subtle gray
    vim.api.nvim_set_hl(0, "IblScope", { fg = "#96A6C8" })       -- gruber blue

    require("ibl").setup({
      indent = {
        char = "│",
        highlight = "IblIndent",
      },
      scope = {
        enabled = true,
        char = "│",
        highlight = "IblScope",
        show_start = false,
        show_end = false,
      },
      exclude = {
        filetypes = {
          "help", "dashboard", "lazy", "NvimTree", "terminal"
        },
      },
    })
  end,
}
