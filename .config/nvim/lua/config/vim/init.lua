local M = {}

M.keymaps = require("config.keymaps")
M.options = require("config.vim.options")

M.setup = function()
    require("vim._core.ui2").enable()

    vim.g.mapleader = " "
    vim.g.maplocalleader = " "

    M.options.setup()
    M.keymaps.setup()
end

return M
