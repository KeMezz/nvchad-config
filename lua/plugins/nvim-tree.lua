-- lua/plugins/nvim-tree.lua
-- nvim-tree 리사이즈 후 크기를 유지하는 설정
return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    on_attach = function(bufnr)
      local api = require "nvim-tree.api"

      -- 기본 키맵 적용
      api.config.mappings.default_on_attach(bufnr)

      local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end

      -- 시스템 클립보드에 복사하는 함수들
      vim.keymap.set("n", "c", function()
        local node = api.tree.get_node_under_cursor()
        vim.fn.setreg("+", node.absolute_path)
        vim.notify("Copied absolute path to clipboard")
      end, opts "Copy Absolute Path to Clipboard")

      vim.keymap.set("n", "Y", function()
        local node = api.tree.get_node_under_cursor()
        vim.fn.setreg("+", node.name)
        vim.notify("Copied filename to clipboard")
      end, opts "Copy Filename to Clipboard")

      vim.keymap.set("n", "gy", function()
        local node = api.tree.get_node_under_cursor()
        local relative = vim.fn.fnamemodify(node.absolute_path, ":.")
        vim.fn.setreg("+", relative)
        vim.notify("Copied relative path to clipboard")
      end, opts "Copy Relative Path to Clipboard")
    end,
    actions = {
      open_file = {
        -- 파일을 열 때 리사이즈하지 않음 (리사이즈 후 크기 유지)
        resize_window = false,
      },
    },
  },
}
