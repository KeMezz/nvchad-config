-- lua/plugins/nvim-tree.lua
-- nvim-tree 리사이즈 후 크기를 유지하는 설정
return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    actions = {
      open_file = {
        -- 파일을 열 때 리사이즈하지 않음 (리사이즈 후 크기 유지)
        resize_window = false,
      },
    },
  },
}
