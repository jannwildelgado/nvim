require('jannwil.core.keymaps')
require('jannwil.core.options')
require('jannwil.core.autocmds')

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    '--branch=stable',
    lazyrepo,
    lazypath
  }
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
	spec = 'jannwil.lazy'
})
