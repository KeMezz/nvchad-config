-- opencode.nvim의 의존 플러그인
return {
  "folke/snacks.nvim",
  opts = {
    dashboard = { enabled = true },
    input = {},
    picker = {},
    terminal = {
      win = {
        wo = {
          number = false,
          relativenumber = false,
        },
      },
    },
  },
}
