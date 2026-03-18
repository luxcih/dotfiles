local M = {}

local config = require("config.git")

M[1] = { "lewis6991/gitsigns.nvim" }
M[1].event = "VeryLazy"
M[1].config = config.setup

return M
