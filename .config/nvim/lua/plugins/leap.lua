local M = {}

local config = require("config.leap")

M[1] = { "ggandor/leap.nvim" }
M[1].dependencies = "tpope/vim-repeat"
M[1].event = "VeryLazy"
M[1].config = config.setup

return M
