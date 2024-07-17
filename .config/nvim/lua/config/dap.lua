local M = {}

M.setup = function()
    local dap = require("dap")
    local dapui = require("dapui")
    local keymaps = require("config.keymaps.dap")

    dapui.setup()

    local mason_registry = require("mason-registry")
    local codelldb = mason_registry.get_package("codelldb")
    local codelldb_path = codelldb:get_install_path() .. "/codelldb"

    dap.adapters["codelldb"] = {
        type = "server",
        port = "${port}",
        executable = {
            command = codelldb_path,
            args = { "--port", "${port}" },
        },
    }

    dap.configurations["zig"] = {
        {
            name = "Debug",
            type = "codelldb",
            request = "launch",
            program = "${workspaceFolder}/zig-out/bin/${workspaceFolderBasename}",
        },
    }

    dap.listeners.before.attach["dapui_config"] = dapui.open
    dap.listeners.before.launch["dapui_config"] = dapui.open
    dap.listeners.before.event_terminated["dapui_config"] = dapui.close
    dap.listeners.before.event_exited["dapui_config"] = dapui.close

    keymaps.setup()
end

return M
