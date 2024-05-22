return {
    { -- completion engine: nvim-cmp
        "hrsh7th/nvim-cmp",
        dependencies = {
            "neovim/nvim-lspconfig",
            "hrsh7th/cmp-nvim-lsp-signature-help",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
        },
        event = { "BufNewFile", "BufReadPre", "InsertEnter", "VeryLazy" },
        config = function()
            local cmp = require("cmp")
            local icons = {
                Class = "",
                Field = "",
                Method = "",
                Text = "󱀍",
                Variable = "",
            }
            local window_border = cmp.config.window.bordered({
                border = "single",
            })

            cmp.setup({
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
                        vim_item.kind = (icons[vim_item.kind] or " ") .. " " .. vim_item.kind
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
        end,
    },
}
