return {
    { -- portable package manager for neovim: mason
        "williamboman/mason.nvim",
        event = "VeryLazy",
        config = true
    },

    { -- extension to mason for lspconfig: mason-lspconfig
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "williamboman/mason.nvim" },
        event = "VeryLazy",
        opts = {
            ensure_installed = {
                "clangd",
                "cmake",
                "lua_ls",
                "pyright",
            },
        },
    },

    { -- bridge for mason and null-ls/none-ls
        "jay-babu/mason-null-ls.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            "nvimtools/none-ls.nvim",
        },
        event = "VeryLazy",
        opts = {
            ensure_installed = {
                "black",
                "ruff",
                "stylua",
            },
        },
    },
}
