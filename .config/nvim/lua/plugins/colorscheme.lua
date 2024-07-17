local M = {}

local config = require("config.colorscheme")

M[1] = { "catppuccin/nvim" }
M[1].name = "catppuccin" -- It's nvim by default
M[1].lazy = false        -- Don't lazy-load
M[1].priority = 1000     -- Needs to be loaded first
M[1].config = config.setup

return M
