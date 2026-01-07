-- opencode.nvim dependency
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
    image = {
      enabled = true,
      doc = {
        inline = false,
        float = true,
        max_width = 60,
        max_height = 30,
      },
    },
  },
}
