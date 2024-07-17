local M = {}

M.setup = function()
    local dap = require("dap")

    vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint)
    vim.keymap.set("n", "<Leader>dc", dap.continue)
    vim.keymap.set("n", "<Leader>dx", dap.terminate)
    vim.keymap.set("n", "<Leader>do", dap.step_over)
end

return M
