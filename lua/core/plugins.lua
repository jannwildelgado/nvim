local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
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
    'folke/which-key.nvim',
    opts = {}
  },

  {
    'folke/trouble.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {}
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
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function ()
      vim.cmd.colorscheme 'catppuccin-mocha'
    end
  },

  {
    'numToStr/Comment.nvim',
    lazy = false,
    opts = {},
    config = function ()
      vim.keymap.set('v', '<leader>/', '<ESC><cmd>lua require(\'Comment.api\').toggle.linewise(vim.fn.visualmode())<CR>')
      vim.keymap.set('n', '<leader>/', function()
        require('Comment.api').toggle.linewise.current()
      end)
    end
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
      'hrsh7th/cmp-nvim-lsp',
      'saadparwaiz1/cmp_luasnip',
      'rafamadriz/friendly-snippets'
    }
  },

  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [']quote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup({ n_lines = 500 })

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup()
    end
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

  -- {
  --   "epwalsh/obsidian.nvim",
  --   version = "*",  -- recommended, use latest release instead of latest commit
  --   lazy = true,
  --   ft = "markdown",
  --   -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  --   -- event = {
  --     --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --     --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --     --   "BufReadPre path/to/my-vault/**.md",
  --     --   "BufNewFile path/to/my-vault/**.md",
  --     -- },
  --     dependencies = {
  --       -- Required.
  --       "nvim-lua/plenary.nvim",
  --
  --       -- see below for full list of optional dependencies 👇
  --     },
  --     opts = {
  --       workspaces = {
  --         {
  --           name = "personal",
  --           path = "~/vaults/personal",
  --         },
  --         {
  --           name = "work",
  --           path = "~/vaults/work",
  --         },
  --       },
  --
  --       -- see below for full list of options 👇
  --     },
  --   }
}

local opts = {}

require('lazy').setup(plugins, opts)
