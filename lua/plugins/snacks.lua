-- opencode.nvimの依存プラグイン
return {
  "folke/snacks.nvim",
  opts = {
    input = {},
    picker = {},
    terminal = {
      win = {
        wo = {
          -- ターミナルで行番号を非表示
          number = false,
          relativenumber = false,
        },
      },
    },
  },
}
