local M = {}

M.setup = function()
    vim.keymap.set("n", "-", "<Cmd>Oil<CR>")
end

return M
