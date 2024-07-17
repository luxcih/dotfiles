local M = {}

M.setup = function()
    vim.keymap.set("n", "<Leader>dd", vim.diagnostic.open_float)
    vim.keymap.set("n", "<Leader>dn", vim.diagnostic.goto_next)
    vim.keymap.set("n", "<Leader>dp", vim.diagnostic.goto_prev)
    vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action)
end

return M
