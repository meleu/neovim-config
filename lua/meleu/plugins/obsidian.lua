return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  -- ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim
  -- for markdown files in a specific folder.
  event = {
    "BufReadPre " .. vim.fn.expand("~") .. "/src/github/meleudotdev/**.md",
    "BufNewFile " .. vim.fn.expand("~") .. "/src/github/meleudotdev/**.md",
  },

  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
    "nvim-telescope/telescope.nvim",
  },

  opts = {
    workspaces = {
      {
        name = "meleudotdev",
        path = "~/src/github/meleudotdev/",
      },
    },

    -- Optional, if you keep notes in a specific subdirectory of your vault.
    notes_subdir = "notes",

    -- Optional, completion of wiki links, local markdown links, and tags using nvim-cmp.
    completion = {
      nvim_cmp = true, -- enable/disable completion
      min_chars = 2, -- amount of chars to trigger autocompletion
    },

    -- Where to put new notes. Valid options are
    --  * "current_dir" - put new notes in same directory as the current buffer.
    --  * "notes_subdir" - put new notes in the default notes subdirectory.
    new_notes_location = "notes_subdir",

    -- Configure keymaps.
    mappings = {
      -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
      ["gf"] = {
        action = function()
          return require("obsidian").util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true },
      },
      ["<c-l>"] = {
        action = function()
          return require("obsidian").util.toggle_checkbox()
        end,
        opts = { buffer = true },
      },
    },
  },
}
