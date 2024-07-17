local M = {}

local config = require("config.mason")

M[1] = { "williamboman/mason.nvim" }
M[1].event = "VeryLazy"
M[1].config = config.setup

M[2] = { "williamboman/mason-lspconfig.nvim" }
M[2].dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
}
M[2].event = "VeryLazy"
M[2].opts = config.opts_lspconfig

M[3] = { "jay-babu/mason-nvim-dap.nvim" }
M[3].dependencies = {
    "williamboman/mason.nvim",
    "mfussenegger/nvim-dap",
}
M[3].event = "VeryLazy"
M[3].opts = config.opts_dap

M[4] = { "jay-babu/mason-null-ls.nvim" }
M[4].dependencies = {
    "williamboman/mason.nvim",
    "nvimtools/none-ls.nvim",
}
M[4].event = "VeryLazy"
M[4].opts = config.opts_nonls

return M
