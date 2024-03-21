-- Sync clipboard between OS and Neovim.
--  See `:help 'clipboard'`
vim.opt.clipboard = "unnamedplus"

-- Don't show the mode, since it's already in status line
vim.opt.showmode = false

-- Keep signcolumn on by default
-- NOTE: I didn't understand this option (even after reading the :help)
vim.opt.signcolumn = "yes"

-- Decrease update time
vim.opt.updatetime = 2500

-- Time in milliseconds to wait for a mapped sequence to complete.
vim.opt.timeoutlen = 300

-- Sets how neovim will display certain whitespace in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
