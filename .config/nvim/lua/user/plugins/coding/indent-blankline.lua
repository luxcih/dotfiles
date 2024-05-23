local M = { "lukas-reineke/indent-blankline.nvim" }

M.event = { "BufNewFile", "BufReadPre", "InsertEnter", "VeryLazy" }
M.main = "ibl"
M.config = true

return M

