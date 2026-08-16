local M = {}

M.group = vim.api.nvim_create_augroup
M.create = vim.api.nvim_create_autocmd

return M
