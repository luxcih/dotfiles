local M = {}

M.setup = function ()
    local toggleterm = require("toggleterm")
    local keymaps = require("config.keymaps.terminal")

    toggleterm.setup()
    keymaps.setup()
end

return M
