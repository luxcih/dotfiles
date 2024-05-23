local M = { "folke/todo-comments.nvim" }

M.event = { "BufNewFile", "BufReadPre", "InsertEnter", "VeryLazy" }
M.config = true

return M

