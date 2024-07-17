local M = {}

M.setup = function()
    vim.keymap.set("n", "<Leader>dm", "<Cmd>Noice dismiss<CR>")
end

return M
