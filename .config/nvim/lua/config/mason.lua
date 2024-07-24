local M = {}

M.opts_lspconfig = {
    ensure_installed = {
        "bashls",
        "lua_ls",
        "pyright",
        "ruff",
        "ruff_lsp",
        "zls",
    },
}

M.opts_dap = {
    ensure_installed = { "codelldb" },
}

M.opts_nonls = {
    ensure_installed = { "stylua" },
}

M.setup = function()
    local mason = require("mason")
    local keymaps = require("config.keymaps.mason")

    mason.setup()
    keymaps.setup()
end

return M
