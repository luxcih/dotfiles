local M = {}

M.lsps = {
    "clangd",
    "lua_ls",
    "pyright",
    "zls",
}

M.setup = function(plugin, opts)
    local keymaps = require("config.keymaps.lsp")

    vim.lsp.enable(M.lsps)
    keymaps.setup()
end

return M
