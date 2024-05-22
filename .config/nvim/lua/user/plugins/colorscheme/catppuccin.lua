local M = { "catppuccin/nvim" }

M.name = "catppuccin"
M.lazy = false
M.priority = 1000
M.config = function()
    vim.cmd.colorscheme("catppuccin")
end

return M
