local M = {}

local config = require("config.ui")

M[1] = { "folke/noice.nvim" }
M[1].dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
    "nvim-treesitter/nvim-treesitter",
}
M[1].event = "VeryLazy"
M[1].opts = config.opts
M[1].config = config.setup

M[2] = { "nvim-lualine/lualine.nvim" }
M[2].dependencies = "nvim-tree/nvim-web-devicons"
M[2].event = "VeryLazy"
M[2].config = true

return M
