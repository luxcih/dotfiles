local M = { "hrsh7th/nvim-cmp" }

M.event = { "BufNewFile", "BufReadPre", "InsertEnter", "VeryLazy" }
M.dependencies = {
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-vsnip",
    "hrsh7th/vim-vsnip",
}
M.config = function()
    local cmp = require("cmp")
    local icons = {
        Text          = "", -- 1
        Method        = "", -- 2
        Function      = "", -- 3
        Constructor   = "", -- 4
        Field         = "", -- 5
        Variable      = "", -- 6
        Class         = "", -- 7
        Interface     = "", -- 8
        Module        = "", -- 9
        Property      = "", -- 10
        Unit          = "", -- 11
        Value         = "", -- 12
        Enum          = "", -- 13
        Keyword       = "", -- 14
        Snippet       = "", -- 15
        Color         = "", -- 16
        File          = "", -- 17
        Reference     = "", -- 18
        Folder        = "", -- 19
        EnumMember    = "", -- 20
        Constant      = "", -- 21
        Struct        = "", -- 22
        Event         = "", -- 23
        Operator      = "", -- 24
        TypeParameter = "", -- 25
    }
    local window_border = cmp.config.window.bordered({
        border = "single",
    })

    cmp.setup({
        snippet = {
            expand = function(args)
                vim.fn["vsnip#anonymous"](args.body)
            end,
        },
        window = {
            completion = window_border,
            documentation = window_border,
        },
        sources = {
            { name = "nvim_lsp_signature_help" },
            { name = "nvim_lsp" },
            { name = "buffer" },
            { name = "path" },
        },
        formatting = {
            format = function(_, vim_item)
                vim_item.kind = icons[vim_item.kind] .. " " .. vim_item.kind
                return vim_item
            end
        },
        mapping = {
            ["<Up>"] = cmp.mapping.select_prev_item(),
            ["<Down>"] = cmp.mapping.select_next_item(),
            ["<Esc>"] = cmp.mapping.abort(),
            ["<CR>"] = cmp.mapping.confirm(),
        },
    })

    cmp.setup.cmdline({"/", "?"}, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = { { name = "buffer" } },
    })

    cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources(
            { { name = "path" } },
            { { name = "cmdline" } }
        ),
    })
end

return M
