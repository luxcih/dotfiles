local M = {}

M.setup = function()
    vim.keymap.set("n", "<Leader>mm", "<Cmd>Mason<CR>")
end

return M
