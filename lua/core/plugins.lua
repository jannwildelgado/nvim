local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath
  }
end
vim.opt.rtp:prepend(lazypath)


local plugins = {
  -- Git Commit
  'tpope/vim-fugitive',

  'christoomey/vim-tmux-navigator',
  'lukas-reineke/indent-blankline.nvim',

  'mbbill/undotree',

  {
    'nvim-tree/nvim-tree.lua',
    opts = function ()
      return require('core.config.nvimtree')
    end,
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    }
  },

  {
    'windwp/nvim-autopairs',
    opts = {
      fast_wrap = {},
      disable_filetype = { 'TelescopePrompt', 'vim' }
    }
  },

  {
    'nvim-lualine/lualine.nvim',
    opts = function ()
      return require('core.config.lualine')
    end,
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    }
  },

  {
    'folke/which-key.nvim',
    opts = {}
  },

  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000
  },

  {
    'numToStr/Comment.nvim',
    lazy = false,
    opts = {}
  },

  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects'
    }
  },

  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'rafamadriz/friendly-snippets'
    }
  },

  -- Config 
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'folke/neodev.nvim',
      'williamboman/mason-lspconfig.nvim',

      {
        'williamboman/mason.nvim',
        config = true
      },

      {
        'j-hui/fidget.nvim',
        tag = 'legacy',
        opts = {}
      }
    }
  }
}

local opts = {}

require('lazy').setup(plugins, opts)
