local M = {}

M.setup = function ()
    vim.keymap.set("n", "<Leader>gp", "<Cmd>Gitsigns preview_hunk<CR>")
end

return M
