local M = {}

M.lazy = require("config.lazy")
M.vim = require("config.vim")

M.setup = function()
    M.vim.setup()
    M.lazy.setup()
end

return M
