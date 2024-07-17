local M = {}

M.opts = {
    view_options = {
        show_hidden = true,
    },
}

M.setup = function(plugin, opts)
    local oil = require("oil")
    local keymaps = require("config.keymaps.explorer")

    oil.setup(opts)
    keymaps.setup()
end

return M
