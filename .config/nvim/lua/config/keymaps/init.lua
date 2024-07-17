local M = {}

M.lazy = require("config.keymaps.lazy")
M.telescope = require("config.keymaps.telescope")

M.setup = function()
    -- Disable arrow keys
    vim.keymap.set({ "n", "v" }, "<left>", "<NOP>")
    vim.keymap.set({ "n", "v" }, "<Down>", "<NOP>")
    vim.keymap.set({ "n", "v" }, "<Up>", "<NOP>")
    vim.keymap.set({ "n", "v" }, "<Right>", "<NOP>")

    -- Big vertical movements
    vim.keymap.set("n", "<C-j>", "10j")
    vim.keymap.set("n", "<C-k>", "10k")

    -- Void delete
    vim.keymap.set("n", "<Leader>d", '"_d')

    -- Delete character and line
    vim.keymap.set("n", "x", '"xvx')
    vim.keymap.set("n", "X", '"xvX')

    -- Move selected block
    vim.keymap.set("v", "J", ":move '>+1<CR>gv=gv")
    vim.keymap.set("v", "K", ":move '<-2<CR>gv=gv")

    -- Change visually selected text and goto next match
    vim.keymap.set("v", "<Leader>r", '"zy<Cmd>let @/=@z<CR>cgn')

    -- Checkhealth
    vim.keymap.set("n", "<Leader>ch", "<Cmd>checkhealth<CR>")
end

return M
