---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "vscode_dark",
  transparency = false,
  telescope = { style = "borderless" },
  statusline = {
    theme = "vscode",
  },
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },

  },
}

return M
