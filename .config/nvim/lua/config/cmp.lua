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

    local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0
            and vim.api
                    .nvim_buf_get_lines(0, line - 1, line, true)[1]
                    :sub(col, col)
                    :match("%s")
                == nil
    end

    local feedkey = function(key, mode)
        vim.api.nvim_feedkeys(
            vim.api.nvim_replace_termcodes(key, true, true, true),
            mode,
            true
        )
    end

    cmp.setup({
        snippet = {
            expand = function(args) vim.fn["vsnip#anonymous"](args.body) end,
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
            ["<Tab>"] = cmp.mapping(function(fallback)
                if vim.fn["vsnip#available"](1) == 1 then
                    feedkey("<Plug>(vsnip-expand-or-jump)", "")
                else
                    fallback()
                end
            end, { "i", "s" }),
            ["<S-Tab>"] = cmp.mapping(function()
                if vim.fn["vsnip#jumpable"](-1) == 1 then
                    feedkey("<Plug>(vsnip-jump-prev)", "")
                end
            end, { "i", "s" }),
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
