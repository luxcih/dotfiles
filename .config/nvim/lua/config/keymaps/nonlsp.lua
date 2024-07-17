local M = {}

M.setup = function()
    vim.keymap.set("n", "<Leader>fm", vim.lsp.buf.format)
end

return M
