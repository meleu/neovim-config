--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
-- vim.keymap.set("n", "<esc>", ":nohlsearch<cr>")

-- buffer navigation
vim.keymap.set("n", "]b", ":bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "[b", ":bprevious<cr>", { desc = "Previous buffer" })

-- I'm not really sure about this, but using to keep consistency with my VSCode usage
vim.keymap.set("n", "gt", ":bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "gT", ":bprevious<cr>", { desc = "Previous buffer" })

-- Diagnostic keymaps
-- NOTE: only works properly when LSP is properly configured
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>de", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>dq", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- disable github copilot with <leader>cc
vim.keymap.set("n", "<leader>cd", ":Copilot disable<cr>", { desc = "GitHub [C]opilot [D]isable" })
vim.keymap.set("n", "<leader>ce", ":Copilot enable<cr>", { desc = "GitHub [C]opilot [E]nable" })
