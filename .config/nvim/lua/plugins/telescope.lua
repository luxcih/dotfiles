local M = {}

local config = require("config.telescope")

M[1] = { "nvim-telescope/telescope.nvim" }
M[1].dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
    "nvim-telescope/telescope-fzf-native.nvim",
}
M[1].event = "VeryLazy"
M[1].opts = config.opts
M[1].config = config.setup

M[2] = { "nvim-telescope/telescope-fzf-native.nvim" }
M[2].dependencies = "nvim-telescope/telescope.nvim"
M[2].build = "make"
M[2].event = "VeryLazy"

return M
