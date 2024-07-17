local M = {}

local config = require("config.nonlsp")

M[1] = { "nvimtools/none-ls.nvim" }
M[1].dependencies = "nvim-lua/plenary.nvim"
M[1].event = "VeryLazy"
M[1].opts = config.opts
M[1].config = config.setup

return M
