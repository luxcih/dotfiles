local keymap = require("core.keymap")

vim.cmd("packadd nvim.undotree")
keymap.set("n", "<Leader>u", vim.cmd.Undotree, { desc = "Undo tree" })
