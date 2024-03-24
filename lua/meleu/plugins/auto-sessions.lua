return {
  "rmagatti/auto-session",
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require("auto-session").setup({
      log_level = "error",
      auto_sesion_suppress_dirs = { "/", "~/", "~/tmp", "~/Downloads" },
      session_lens = {
        buftypes_to_ignore = {},
        load_on_setup = true,
        theme_conf = { border = true },
        previewer = false,
      },
      vim.keymap.set(
        "n",
        "<leader>ls",
        require("auto-session.session-lens").search_session,
        { noremap = true, desc = "[L]ist [S]essions" }
      ),
    })
  end,
}
