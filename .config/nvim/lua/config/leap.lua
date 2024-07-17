local M = {}

M.setup = function()
    local leap = require("leap")
    local keymaps = require("config.keymaps.leap")

    leap.setup({})
    keymaps.setup()
end

return M
