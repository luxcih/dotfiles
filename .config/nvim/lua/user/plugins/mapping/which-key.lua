local M = { "folke/which-key.nvim" }

M.event = "VeryLazy"
M.config = function()
    local wk = require("which-key")

    wk.register({
        ["k"] = { "<cmd>WhichKey<cr>", "Show which-key" },
    }, { prefix = "<leader>" })

    wk.register({
        ["x"] = { '"_x', "Delete character" },
        ["X"] = { '"_dd', "Delete line" },
    })

    wk.register({
        ["q"] = { "<cmd>q<cr>", "Quit" },
        ["Q"] = { "<cmd>q!<cr>", "Quit (forced)" },
        ["w"] = { "<cmd>w<cr>", "Write" },
        ["W"] = { "<cmd>w!<cr>", "Write (forced)" },
    }, { prefix = "<leader>" })

    wk.register({
        ["q"] = { "<cmd>qa<cr>", "Quit all" },
        ["Q"] = { "<cmd>qa!<cr>", "Quit all (forced)" },
        ["w"] = { "<cmd>wa<cr>", "Write all" },
        ["W"] = { "<cmd>wa!<cr>", "Write all (forced)" },
    }, { prefix = "," })

    wk.register({
        ["h"] = { "<C-w>h", "Switch to left window" },
        ["j"] = { "<C-w>j", "Switch to down window" },
        ["k"] = { "<C-w>k", "Switch to up window" },
        ["l"] = { "<C-w>l", "Switch to right window" },
    })

    wk.register({
        ["<C-Left>"] = { "<cmd>BufferLineCyclePrev<CR>", "Switch to previous buffer" },
        ["<C-Right>"] = { "<cmd>BufferLineCycleNext<CR>", "Switch to next buffer" },
    })

    wk.register({
        ["x"] = { "<cmd>Bdelete<cr>", "Close current buffer" },
    }, { prefix = "<leader>" })

    wk.register({
        ["l"] = { "<cmd>Lazy<cr>", "Lazy" },
    }, { prefix = "<leader>" })

    wk.register({
        ["m"] = { "<cmd>Mason<cr>", "Mason" },
    }, { prefix = "<leader>" })

    wk.register({
        ["d"] = {
            name = "diagnostic",
            ["d"] = { vim.diagnostic.open_float, "View diagnostic" },
            ["n"] = { vim.diagnostic.goto_next, "Go to the next diagnostic" },
            ["p"] = { vim.diagnostic.goto_prev, "Go to the previous diagnostic" },
            ["a"] = { vim.lsp.buf.code_action, "Code action" },
        },
    }, { prefix = "<leader>" })

    wk.register({
        ["e"] = { "<cmd>NvimTreeFocus<cr>", "Focus nvim-tree" },
        ["t"] = {
            name = "nvim-tree",
            ["o"] = { "<cmd>NvimTreeOpen<cr>", "Open" },
            ["x"] = { "<cmd>NvimTreeClose<cr>", "Close" },
            ["t"] = { "<cmd>NvimTreeToggle<cr>", "Toggle" },
            ["f"] = { "<cmd>NvimTreeFocus<cr>", "Focus" },
            ["c"] = { "<cmd>NvimTreeCollapse<cr>", "Collapse" },
            ["<Left>"] = { "<cmd>NvimTreeResize -5<cr>", "Decrease size" },
            ["<Right>"] = { "<cmd>NvimTreeResize +5<cr>", "Increase size" },
        },
    }, { prefix = "<leader>" })

    wk.register({
        ["f"] = {
            name = "telescope",
            ["t"] = { "<cmd>Telescope<cr>", "Telescope" },
            ["f"] = { "<cmd>Telescope find_files<cr>", "Find files" },
            ["g"] = { "<cmd>Telescope live_grep<cr>", "Live grep" },
        },
    }, { prefix = "<leader>" })
end

return M
