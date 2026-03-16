local M = {}

M.lsps = {
    "lua_ls",
}

M.setup = function(plugin, opts)
    local keymaps = require("config.keymaps.lsp")

    vim.lsp.enable(M.lsps)
    keymaps.setup()
end

return M
