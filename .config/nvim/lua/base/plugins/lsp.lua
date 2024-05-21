local event = { "BufNewFile", "BufReadPre", "InsertEnter", "VeryLazy" }

return {
    { -- neovim lsp config
        "neovim/nvim-lspconfig",
        event = event,
        config = function()
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
        end,
    },

    { -- hooke none-lsp sources: null-ls/none-ls
        "nvimtools/none-ls.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        event = event,
        config = true,
    },

    { -- neovim signature help: neodev
        "folke/neodev.nvim",
        event = event,
        config = true,
    },
}
