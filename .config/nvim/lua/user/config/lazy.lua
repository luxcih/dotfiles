local M = {}

M.plugins = require("user.plugins")
M.path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
M.installed = (vim.uv or vim.loop).fs_stat(M.path)
M.install = { colorscheme = { "catppuccin" } }
M.defaults = { lazy = true, version = "*" }

M.bootstrap = function()
    print("Installing lazy.nvim")
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim",
        "--branch=stable", M.path,
    })
end

M.setup = function()
    if not M.installed then M.bootstrap() end
    require("lazy").setup(M.plugins, M)
end

return M
