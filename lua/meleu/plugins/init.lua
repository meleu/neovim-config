-- plugins that don't require configurations
return {
  -- `gr<text-object>` to replace with the contents of the register
  "vim-scripts/ReplaceWithRegister",

  -- quickly handling surrounds
  "tpope/vim-surround",

  -- make vim-surround dot-repeatable
  "tpope/vim-repeat",

  -- C-a/C-x to increase/decrease dates
  "tpope/vim-speeddating",

  -- Use `opts = {}` to force a plugin to be loaded.
  -- This is equivalent to: `require('Comment').setup({})`

  -- "gc" to comment visual regions/lines
  { "numToStr/Comment.nvim", opts = {} },
}
