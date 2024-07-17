local M = {}

M.setup = function(plugin, opts)
    local null_ls = require("null-ls")
    local keymaps = require("config.keymaps.nonlsp")

    null_ls.setup({
        sources = {
            null_ls.builtins.formatting.stylua,
        },
    })

    keymaps.setup()
end

return M
