local M = {}

-- stylua: ignore
M.cmp_icons = {
    Text          = "",
    Method        = "",
    Function      = "",
    Constructor   = "",
    Field         = "",
    Variable      = "",
    Class         = "",
    Interface     = "",
    Module        = "",
    Property      = "",
    Unit          = "",
    Value         = "",
    Enum          = "",
    Keyword       = "",
    Snippet       = "",
    Color         = "",
    File          = "",
    Reference     = "",
    Folder        = "",
    EnumMember    = "",
    Constant      = "",
    Struct        = "",
    Event         = "",
    Operator      = "",
    TypeParameter = "",
}

M.setup = function(plugin, opts)
    local cmp = require("cmp")

    -- Border to use for every completion window
    local window_border = cmp.config.window.bordered({ border = "single" })

    cmp.setup({
        window = {
            completion = window_border,
            documentation = window_border,
        },
        sources = {
            { name = "lazydev" },
            { name = "nvim_lsp_signature_help" },
            { name = "nvim_lsp" },
            { name = "buffer" },
            { name = "path" },
        },
        formatting = {
            format = function(_, vim_item)
                vim_item.kind = M.cmp_icons[vim_item.kind] .. " " .. vim_item.kind
                return vim_item
            end,
        },
        mapping = {
            ["<Up>"] = cmp.mapping.select_prev_item(),
            ["<Down>"] = cmp.mapping.select_next_item(),
            ["<Esc>"] = cmp.mapping.abort(),
            ["<CR>"] = cmp.mapping.confirm(),
            ["<C-Space>"] = cmp.mapping(function() cmp.complete() end, { "i", "s" }),
        },
    })

    cmp.setup.cmdline({ "/", "?" }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = { { name = "buffer" } },
    })

    cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({ { name = "path" } }, { { name = "cmdline" } }),
    })
end

return M
