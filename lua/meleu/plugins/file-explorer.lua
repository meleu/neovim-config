return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  keys = {
    {
      "<leader>e",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
      end,
      desc = "Explorer (CWD)",
    },
    -- {
    --   "<leader>E",
    --   function()
    --     -- this "Util.root" thing is specific to LazyVim distro
    --     require("neo-tree.command").execute({ toggle = true, dir = Util.root() })
    --   end,
    --   desc = "Explorer (root dir)"
    -- }
  },
}
