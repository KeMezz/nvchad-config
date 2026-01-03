return {
  "pysan3/fcitx5.nvim",
  event = "InsertEnter",
  cond = function()
    return vim.fn.executable("fcitx5-remote") == 1
  end,
  opts = {
    imname = {
      norm = "keyboard-us",
      ins = "keyboard-us",
    },
  },
}
