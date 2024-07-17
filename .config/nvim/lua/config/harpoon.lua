local M = {}

M.setup = function(plugin, opts)
    local harpoon = require("harpoon")
    local keymaps = require("config.keymaps.harpoon")

    harpoon:setup()
    keymaps.setup()
end

return M
