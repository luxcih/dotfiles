local M = { "neovim/nvim-lspconfig" }

M.event = { "BufNewFile", "BufReadPre", "InsertEnter", "VeryLazy" }
M.dependencies = { "folke/neodev.nvim" }
M.config = function()
    require("neodev").setup()

    local lspconfig = require("lspconfig")
    local capabilities = vim.tbl_deep_extend("force",
        vim.lsp.protocol.make_client_capabilities(),
        require("cmp_nvim_lsp").default_capabilities()
    )
    capabilities.workspace.didChangeWatchedFiles.dynamicRegistration = false

    lspconfig.clangd.setup({ capabilities = capabilities })
    lspconfig.cmake.setup({ capabilities = capabilities })
    lspconfig.lua_ls.setup({ capabilities = capabilities })
    lspconfig.pyright.setup({ capabilities = capabilities })
end

return M
