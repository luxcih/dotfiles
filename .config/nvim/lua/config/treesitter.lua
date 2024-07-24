local M = {}

M.opts = {
    ensure_installed = {
        "bash",
        "c",
        "lua",
        "python",
        "rasi",
        "regex",
        "toml",
        "vim",
        "vimdoc",
        "zig",
    },
    highlight = { enable = true },
}

M.setup = function(plugin, opts)
    local treesitter = require("nvim-treesitter")
    local configs = require("nvim-treesitter.configs")

    treesitter.setup()
    configs.setup(opts)
end

return M
