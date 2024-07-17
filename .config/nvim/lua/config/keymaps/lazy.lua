local M = {}

M.setup = function()
    vim.keymap.set("n", "<Leader>ll", "<Cmd>Lazy<CR>")
    vim.keymap.set("n", "<Leader>ls", "<Cmd>Lazy sync<CR>")
    vim.keymap.set("n", "<Leader>lu", "<Cmd>Lazy update<CR>")
end

return M
