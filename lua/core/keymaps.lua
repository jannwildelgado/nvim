local separator = package.config:sub(1, 1)

if separator == "/" then
    vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
    vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
    vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
    vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
end

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
