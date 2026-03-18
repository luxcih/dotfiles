local M = {}

local config = require("config.cmp")

M[1] = { "hrsh7th/nvim-cmp" }
M[1].branch = "main"
M[1].dependencies = {
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
}
M[1].event = "VeryLazy"
M[1].config = config.setup

return M
