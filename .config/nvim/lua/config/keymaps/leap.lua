local M = {}

M.setup = function()
    vim.keymap.set("n", "<Leader>s", "<Plug>(leap-forward)")
    vim.keymap.set("n", "<Leader>S", "<Plug>(leap-backward)")
end

return M
