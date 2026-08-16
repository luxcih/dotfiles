local M = {}

function M.get()
  local capabilities = vim.lsp.protocol.make_client_capabilities()

  capabilities.textDocument.completion = {
    completionItem = {
      snippetSupport = true,
      preselectSupport = true,
      insertReplaceSupport = true,
      labelDetailsSupport = true,
      documentationFormat = { "markdown", "plaintext" },
      resolveSupport = {
        properties = {
          "documentation",
          "detail",
          "additionalTextEdits",
        },
      },
    },
  }

  return capabilities
end

return M
