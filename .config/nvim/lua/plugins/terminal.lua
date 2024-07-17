local M = {}

local config = require("config.terminal")

M[1] = { "akinsho/toggleterm.nvim" }
M[1].event = "VeryLazy"
M[1].config = config.setup

return M
