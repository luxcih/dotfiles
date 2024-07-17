local M = {}

M.setup = function()
    local keymaps = require("config.keymaps.undo")

    keymaps.setup()
end

return M
