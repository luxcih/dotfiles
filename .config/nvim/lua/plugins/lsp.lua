local M = {}

local config = require("config.lsp")

M[1] = { "neovim/nvim-lspconfig" }
M[1].event = "VeryLazy"
M[1].config = config.setup

-- LuaLS for editting neovim config
M[2] = { "folke/lazydev.nvim" }
M[2].event = "VeryLazy"
M[2].ft = "lua" -- Load on lua files
M[2].config = true

return M
