local M = {}

M.setup = function(plugin, opts)
    local lspconfig = require("lspconfig")
    local mason_config = require("config.mason")
    local keymaps = require("config.keymaps.lsp")

    local lsps = mason_config.opts_lspconfig.ensure_installed
    local capabilities = vim.tbl_deep_extend(
        "force",
        vim.lsp.protocol.make_client_capabilities(),
        require("cmp_nvim_lsp").default_capabilities()
    )

    capabilities.workspace.didChangeWatchedFiles.dynamicRegistration = false

    for index, lsp in ipairs(lsps) do
        lspconfig[lsp].setup({ capabilities = capabilities })
    end

    keymaps.setup()
end

return M
