---- CONFIG
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus"

---- DISPLAY HIGHLIGHT ON YANK
-- Create an augroup to organize the autocommand
vim.api.nvim_create_augroup('YankHighlight', { clear = true })

-- Add an autocommand that triggers on yank
vim.api.nvim_create_autocmd('TextYankPost', {
  group = 'YankHighlight',
  callback = function()
    vim.highlight.on_yank({
      higroup = 'IncSearch',  -- You can change this to any highlight group
      timeout = 400,          -- Duration of the highlight in milliseconds
    })
  end,
})

