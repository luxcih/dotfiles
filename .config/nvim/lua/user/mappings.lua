-- Set the leader key for the mappings
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Define the key mappings
mappings = {
    ["x"] = { '"_x', "Delete character" },
    ["X"] = { '"_dd', "Delete line " },
    [",q"] = { "<cmd>qa<cr>", "Quit all" },
    [",Q"] = { "<cmd>qa!<cr>", "Force quit all" },
    [",w"] = { "<cmd>wa<cr>", "Write all" },
    [",W"] = { "<cmd>qa!<cr>", "Force write all" },
    ["<leader>w"] = { "<cmd>w<cr>", "Write" },
    ["<leader>W"] = { "<cmd>w!<cr>", "Force write" },
    ["<leader>q"] = { "<cmd>q<cr>", "Quit" },
    ["<leader>Q"] = { "<cmd>q!<cr>", "Force quit" },
    ["h"] = { "<C-w>h", "Window left" },
    ["j"] = { "<C-w>j", "Window down" },
    ["k"] = { "<C-w>k", "Window up" },
    ["l"] = { "<C-w>l", "Window right" },
    ["<C-Left>"] = { "<cmd>BufferLineCyclePrev<CR>", "Previous tab" },
    ["<C-Right>"] = { "<cmd>BufferLineCycleNext<CR>", "Next tab" },
    ["<leader>x"] = { "<cmd>Bdelete<cr>", "Close current buffer" },
    ["<leader>k"] = { "<cmd>WhichKey<cr>", "Show WhichKey" },
    ["<leader>t"] = {
        name = "+nvim-tree",
        ["o"] = { "<cmd>NvimTreeOpen<cr>", "Open nvim-tree" },
        ["x"] = { "<cmd>NvimTreeClose<cr>", "Close nvim-tree" },
        ["t"] = { "<cmd>NvimTreeToggle<cr>", "Toggle nvim-tree" },
        ["f"] = { "<cmd>NvimTreeFocus<cr>", "Focus nvim-tree" },
        ["<Left>"] = { "<cmd>NvimTreeResize -5<cr>", "Decrease nvim-tree size" },
        ["<Right>"] = { "<cmd>NvimTreeResize +5<cr>", "Increase nvim-tree size" },
    },
    ["<leader>e"] = { "<cmd>NvimTreeFocus<cr>", "Focus nvim-tree" },
}

return mappings
