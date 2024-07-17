local M = {}

local function toggle_telescope(harpoon_files)
    local conf = require("telescope.config").values
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers")
        .new({}, {
            prompt_title = "Harpoon",
            finder = require("telescope.finders").new_table({
                results = file_paths,
            }),
            previewer = conf.file_previewer({}),
            sorter = conf.generic_sorter({}),
        })
        :find()
end

M.setup = function()
    local harpoon = require("harpoon")

    vim.keymap.set("n", "<Leader>pa", function() harpoon:list():add() end)
    vim.keymap.set("n", "<Leader>pd", function() harpoon:list():remove() end)
    vim.keymap.set("n", "<Leader>po", function() toggle_telescope(harpoon:list()) end)
end

return M
