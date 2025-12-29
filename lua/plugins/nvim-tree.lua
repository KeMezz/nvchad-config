-- lua/plugins/nvim-tree.lua
-- nvim-treeのリサイズ後のサイズを保持する設定
return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    actions = {
      open_file = {
        -- ファイルを開く時にリサイズしない（リサイズ後のサイズを保持）
        resize_window = false,
      },
    },
  },
}
