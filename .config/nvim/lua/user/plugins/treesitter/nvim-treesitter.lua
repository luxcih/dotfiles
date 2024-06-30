local M = { "nvim-treesitter/nvim-treesitter" }

M.event = { "BufNewFile", "BufReadPre", "InsertEnter", "VeryLazy" }
M.build = ":TSUpdate"
M.config = function(_, opts)
    require("nvim-treesitter").setup(opts)
    require("nvim-treesitter.configs").setup({
        ensure_installed = {
            "c",
            "cmake",
            "cpp",
            "fish",
            "lua",
            "markdown",
            "python",
            "toml",
            "yaml",
            "zig",
        },
        highlight = { enable = true },
        incremental_selection = { enable = true },
        indent = { enable = true },
    })
end

return M
