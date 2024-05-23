local M = { "nvimtools/none-ls.nvim" }

M.event = { "BufNewFile", "BufReadPre", "InsertEnter", "VeryLazy" }
M.dependencies = { "nvim-lua/plenary.nvim" }
M.config = true

return M
