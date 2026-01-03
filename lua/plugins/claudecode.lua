return {
  "coder/claudecode.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = "VeryLazy", -- WebSocket 서버 시작 후 로드
  opts = {
    terminal = {
      provider = "snacks", -- snacks.nvim 사용
      split_side = "right",
      split_width_percentage = 0.4,
    },
    diff_opts = {
      open_in_new_tab = true,
      hide_terminal_in_new_tab = false,
      keep_terminal_focus = true,
      layout = "vertical",
    },
  },
  keys = {
    { "<leader>cc", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude Code" },
    { "<leader>cf", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude Code" },
    { "<leader>cb", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" },
    { "<leader>cs", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
    { "<leader>ca", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
    { "<leader>cd", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Deny diff" },
  },
}
