local M = {}

M.setup = function()
    local builtin = require("telescope.builtin")

    vim.keymap.set("n", "<Leader>ts", "<Cmd>Telescope<CR>")
    vim.keymap.set("n", "<Leader>ff", builtin.find_files)
    vim.keymap.set("n", "<Leader>fg", builtin.live_grep)
    vim.keymap.set("n", "<Leader>fb", builtin.buffers)
    vim.keymap.set("n", "<Leader>fj", builtin.jumplist)
    vim.keymap.set("n", "<Leader>km", builtin.keymaps)
    vim.keymap.set("n", "<Leader>th", builtin.colorscheme)
end

return M
