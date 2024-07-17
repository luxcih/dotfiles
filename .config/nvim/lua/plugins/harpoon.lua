local M = {}

local config = require("config.harpoon")

M[1] = { "ThePrimeagen/harpoon" }
M[1].branch = "harpoon2"
M[1].dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
}
M[1].event = "VeryLazy"
M[1].config = config.setup

return M
