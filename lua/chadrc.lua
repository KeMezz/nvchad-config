-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

-- システムのダークモード状態を取得
local function is_dark_mode()
  local handle = io.popen "defaults read -g AppleInterfaceStyle 2>/dev/null"
  if handle then
    local result = handle:read "*a"
    handle:close()
    return result:match "Dark" ~= nil
  end
  return false
end

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = is_dark_mode() and "catppuccin" or "material-lighter",
  hl_override = {
    NormalNC = { bg = "NONE" }, -- 非アクティブウィンドウの背景を同一に
  },
}

-- M.nvdash = { load_on_startup = true }

return M
