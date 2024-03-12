-- load my old ~/.vimrc (if it exists)
if vim.fn.filereadable("~/.vimrc") then
  vim.cmd("source ~/.vimrc")
end

require("meleu.configs.options")
require("meleu.configs.keymaps")
require("meleu.configs.autocommands")

-- use Lazy.nvim as the plugin manager
require("meleu.configs.lazy")
