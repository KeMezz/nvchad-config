-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "catppuccin",
  hl_override = {
    NormalNC = { bg = "NONE" }, -- 비활성 윈도우의 배경을 동일하게
  },
}

-- M.nvdash = { load_on_startup = true }

return M
