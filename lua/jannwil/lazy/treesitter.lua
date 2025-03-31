return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects' },
    config = function()
      require('nvim-treesitter.configs').setup({
        auto_install = true,
        sync_install = false,
        highlight = { enable = true },
        ensure_installed = {
          'javascript',
          'typescript',
          'vimdoc',
          'lua',
          'tsx',
          'vim',
          'zig',
          'go',
          'vue'
        }
      })
    end
 }
