local M = {}

local statefile = vim.fs.joinpath(vim.fn.stdpath("state"), "theme")
local config = require("config.theme")

local function available_themes()
  return vim.fn.getcompletion("", "color")
end

local function is_available(theme)
  return vim.tbl_contains(available_themes(), theme)
end

local function apply(theme)
  if not theme or not is_available(theme) then
    return false
  end

  return pcall(vim.cmd.colorscheme, theme)
end

local function read()
  local ok, lines = pcall(vim.fn.readfile, statefile)
  if ok and lines[1] ~= "" then
    return lines[1]
  end
end

local function write(theme)
  vim.fn.writefile({ theme }, statefile)
end

function M.save(theme)
  if apply(theme) then
    write(theme)
    return
  end
  vim.notify("Invalid theme: " .. theme, vim.log.levels.WARN)
end

function M.load()
  if apply(read()) then
    return
  end

  for _, theme in ipairs(config.fallbacks or {}) do
    if apply(theme) then
      return
    end
  end

  vim.notify("Failed to load saved theme and all fallbacks.", vim.log.levels.WARN)
end

function M.pick()
  local themes = available_themes()
  local MiniPick = require("mini.pick")

  MiniPick.start({
    source = {
      name = "Themes",
      items = themes,
      choose = function(theme)
        M.save(theme)
      end,
    },
  })
end

function M.init()
  if apply(read()) then
    return
  end

  local autocmd = require("core.autocmd")
  autocmd.create("VimEnter", {
    once = true,
    callback = M.load,
  })
end

return M
