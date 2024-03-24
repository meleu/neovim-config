local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- options for Lazy.nvim
-- https://github.com/folke/lazy.nvim?tab=readme-ov-file#%EF%B8%8F-configuration
local opts = {
  -- I don't want to be notified when a change in config is made.
  change_detection = {
    notify = false,
  },
}

require("lazy").setup("meleu.plugins", opts)
