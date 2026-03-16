local M = {}

M.path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
M.repo = "https://github.com/folke/lazy.nvim.git"

M.status = vim.uv.fs_stat(M.path)
M.bootstrap_out = nil

M.config = {
    defaults = { -- Default plugin specs
        lazy = true, -- Lazy-load plugins
        version = "*", -- Latest stable version
    },

    spec = "plugins", -- Where plugin specs lives

    -- Try to load colorscheme when installing on startup
    install = { colorscheme = { "catppuccin" } },

    -- Annoying notification on config changes
    change_detection = { notify = false },
}

M.bootstrap = function()
    -- Clone lazy using git
    M.bootstrap_out = vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "--branch=stable",
        M.repo,
        M.path,
    })
end

M.setup = function()
    -- Bootstrap lazy if not already
    if not M.status then M.bootstrap() end

    -- Check if something went wrong
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to install lazy.nvim\n", "ErrorMsg"},
            { M.bootstrap_out, "WarningMsg" },
            { "\nPress any key to exit..." },
            }, true, {}
        )
    end

    -- Actually setup lazy and its keymaps
    local lazy = require("lazy")
    local keymaps = require("config.keymaps.lazy")

    lazy.setup(M.config)
    keymaps.setup()
end

return M
