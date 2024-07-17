local M = {}

M.setup = function(plugin, opts)
    local gitsigns = require("gitsigns")
    local keymaps = require("config.keymaps.git")

    gitsigns.setup()
    keymaps.setup()
end

return M
