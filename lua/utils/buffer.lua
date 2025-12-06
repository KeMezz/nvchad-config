-- Buffer navigation utilities
local M = {}

--- Get list of valid buffers (uses NvChad tabufline order)
---@return integer[] List of valid buffer numbers
function M.get_valid_buffers()
  return vim.t.bufs or {}
end

--- Jump to buffer at specified index
---@param index integer Buffer index (1-based)
function M.go_to_buffer(index)
  local buffers = M.get_valid_buffers()
  if buffers[index] then
    vim.api.nvim_set_current_buf(buffers[index])
  end
end

return M
