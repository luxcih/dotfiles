local M = {}

local config = require("config.undo")

M[1] = { "mbbill/undotree" }
M[1].event = "VeryLazy"
M[1].config = config.setup

return M
