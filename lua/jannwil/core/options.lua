local opt = vim.opt
local g = vim.g

vim.wo.number = true
-- vim.cmd [[ set noswapfile ]]
vim.o.termguicolors = true

opt.showcmd = true
opt.laststatus = 2
opt.autowrite = true
opt.cursorline = true
opt.autoread = true

-- use spaces for tabs and whatnot
opt.tabstop = 2
opt.shiftwidth = 2
opt.shiftround = true
opt.expandtab = true

opt.incsearch = true
opt.hlsearch = true

opt.scrolloff = 10

opt.relativenumber = true

opt.undofile = true

opt.foldcolumn = '1'
opt.foldmethod = 'manual'

g.netrw_browse_split = 0
g.netrw_banner = 0
g.netrw_winsize = 25

-- Undotree related
g.undotree_WindowLayout = 1
g.undotree_SplitWidth = 50
