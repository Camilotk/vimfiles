-- remap the leader key to space
vim.g.mapleader = " "

---- NETRW
-- remap the command to open the file browser from :Ex
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- remap the command to close the file browser from :Rex
vim.api.nvim_create_autocmd("FileType", {
  pattern = "netrw",
  callback = function()
    vim.api.nvim_buf_set_keymap(0, 'n', '<leader>pq', ':Rex<CR>', { noremap = true, silent = true })
  end
})

---- WINDOWS
-- Remap CTRL+h/k/l/j to move between windows in neovim
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
