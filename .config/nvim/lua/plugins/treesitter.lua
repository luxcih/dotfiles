local M = {}

local config = require("config.treesitter")

M[1] = { "nvim-treesitter/nvim-treesitter" }
M[1].build = ":TSUpdate"
M[1].event = "VeryLazy"
M[1].opts = config.opts
M[1].config = config.setup

return M
