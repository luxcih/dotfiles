local M = {}

M.setup = function()
    vim.keymap.set("n", "<Leader>uu", "<Cmd>UndotreeToggle<CR>")
end

return M
