local M = { "jay-babu/mason-null-ls.nvim" }

M.event = "VeryLazy"
M.dependencies = {
    "williamboman/mason.nvim",
    "nvimtools/none-ls.nvim",
}
M.opts = {
    ensure_installed = {
        "black",
        "ruff",
        "stylua",
    },
}

return M
