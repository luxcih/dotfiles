return {
    { -- interface for tree-sitter: nvim-treesitter
        "nvim-treesitter/nvim-treesitter",
        event = { "BufNewFile", "BufReadPre", "VeryLazy" },
        build = ":TSUpdate",
        config = function(_, opts)
            require("nvim-treesitter").setup(opts)
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "c",
                    "cmake",
                    "cpp",
                    "lua",
                    "python",
                },
                highlight = { enable = true },
                incremental_selection = { enable = true },
                indent = { enable = true },
                textobjects = { select = { enable = true } },
            })
        end,
    },
}
