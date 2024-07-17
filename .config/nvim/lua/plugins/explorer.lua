local M = {}

local config = require("config.explorer")

M[1] = { "stevearc/oil.nvim" }
M[1].dependencies = "nvim-tree/nvim-web-devicons"
M[1].event = "VeryLazy"
M[1].opts = config.opts
M[1].config = config.setup

return M
