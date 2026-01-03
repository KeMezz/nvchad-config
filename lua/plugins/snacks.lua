-- opencode.nvim의 의존 플러그인
return {
  "folke/snacks.nvim",
  opts = {
    input = {},
    picker = {},
    terminal = {
      win = {
        wo = {
          number = true,
          relativenumber = true,
        },
      },
    },
  },
}
