local M = { "williamboman/mason-lspconfig.nvim" }

M.event = "VeryLazy"
M.dependencies = { "williamboman/mason.nvim" }
M.opts = {
    ensure_installed = {
        "clangd",
        "cmake",
        "lua_ls",
        "mesonlsp",
        "pyright",
        "zls",
    }
}

return M
