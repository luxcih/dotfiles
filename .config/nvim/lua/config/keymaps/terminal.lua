local M = {}

M.setup = function ()
    vim.keymap.set("n", "<Leader>tt", "<Cmd>ToggleTerm<CR>")
    vim.keymap.set("t", "<Esc>", "<C-\\><C-n><Cmd>ToggleTerm<CR>")
end

return M
