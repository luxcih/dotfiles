local M = {}

local config = require("config.git")

M[1] = { "lewis6991/gitsigns.nvim" }
M[1].event = "VeryLazy"
M[1].config = config.setup

M[2] = { "tpope/vim-fugitive" }
M[2].event = "VeryLazy"

return M
