-- load my old ~/.vimrc (if it exists)
if vim.fn.filereadable("~/.vimrc") then
  vim.cmd("source ~/.vimrc")
end

require("meleu.configs.options")

-- use Lazy.nvim as the plugin manager
require("meleu.configs.lazy")
