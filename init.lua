-- load my old ~/.vimrc (if it exists)
if vim.fn.filereadable("~/.vimrc") then
  vim.cmd("source ~/.vimrc")
end

require("meleu.configs.options")
require("meleu.configs.keymaps")
require("meleu.configs.autocommands")

-- set to true to use nerd fonts
vim.g.have_nerd_font = true

-- using Lazy.nvim as the plugin manager
require("meleu.lazy")
