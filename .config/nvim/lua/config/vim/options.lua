local M = {}

M.setup = function()
    vim.opt.number = true -- Show line numbers
    vim.opt.relativenumber = true -- Enable relative line numbers

    vim.opt.autoindent = true
    vim.opt.smartindent = true
    vim.opt.shiftwidth = 4 -- Number of spaces to use

    vim.opt.expandtab = true -- Use spaces for tabs
    vim.opt.softtabstop = 4 -- Number of spaces that a tab counts

    vim.opt.cursorline = true -- Highlight text line of cursor
    vim.opt.guicursor = "" -- Always use block cursor

    vim.opt.swapfile = false -- Don't use swapfiles for buffers
    vim.opt.backup = false -- Don't create backups when writing
    vim.opt.undofile = true -- Enable undo history

    vim.opt.hlsearch = false
    vim.opt.incsearch = true -- Show search pattern

    vim.opt.scrolloff = 999 -- Always center cursor
    vim.opt.signcolumn = "yes" -- Always show signcolumn

    vim.opt.updatetime = 50

    -- Add lazy to runtime path
    local lazy = require("config.lazy") -- Get lazy config
    vim.opt.runtimepath:prepend(lazy.path)
end

return M
