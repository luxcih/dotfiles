local M = {}

local config = require("config.dap")

M[1] = { "mfussenegger/nvim-dap" }
M[1].event = "VeryLazy"
M[1].config = config.setup

M[2] = { "rcarriga/nvim-dap-ui" }
M[2].dependencies = {
    "mfussenegger/nvim-dap",
    "nvim-neotest/nvim-nio",
}
M[2].event = "VeryLazy"

return M
