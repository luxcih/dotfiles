local keymap = require("core.keymap")

-- Editor
keymap.set("n", "<Leader>re", vim.cmd.restart, { desc = "Restart Neovim" })
keymap.set("n", "<Leader>w", vim.cmd.write, { desc = "Save file" })
keymap.set("n", "<Leader>q", vim.cmd.quit, { desc = "Quit Neovim" })
keymap.set("n", "<Esc>", vim.cmd.nohlsearch, { desc = "Clear search highlight" })

-- Windows
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Focus left window" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Focus lower window" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Focus upper window" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Focus right window" })

-- Buffers
keymap.set("n", "<Leader>bd", vim.cmd.bdelete, { desc = "Delete buffer" })

-- Theme
keymap.set("n", "<Leader>tm", function()
  require("core.theme").pick()
end, { desc = "Pick theme" })
