local M = {}

M.setup = function()
    local gitsigns = require("gitsigns")
    vim.keymap.set("n", "<Leader>hp", gitsigns.preview_hunk)
    vim.keymap.set("n", "<Leader>hs", gitsigns.stage_hunk)
    vim.keymap.set("n", "<Leader>hr", gitsigns.reset_hunk)
    vim.keymap.set("n", "<Leader>hu", gitsigns.undo_stage_hunk)
    vim.keymap.set(
        "v",
        "<leader>hs",
        function() gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") }) end
    )
    vim.keymap.set(
        "v",
        "<leader>hr",
        function() gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") }) end
    )
end

return M
