local M = {}

function M.centered_float(width_ratio, height_ratio)
  width_ratio = width_ratio or 0.7
  height_ratio = height_ratio or 0.7

  local height = math.floor(vim.o.lines * height_ratio)
  local width = math.floor(vim.o.columns * width_ratio)

  return {
    relative = "editor",
    anchor = "NW",
    width = width,
    height = height,
    row = math.floor((vim.o.lines - height) / 2),
    col = math.floor((vim.o.columns - width) / 2),
  }
end

return M
