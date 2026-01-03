return {
  "coder/claudecode.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = "VeryLazy", -- WebSocket 서버를 시작 시 로드
  opts = {
    terminal = {
      provider = "none", -- tmux pane에서 직접 실행하므로 비활성화
    },
    diff_opts = {
      open_in_new_tab = true,
      hide_terminal_in_new_tab = false,
      keep_terminal_focus = true,
      layout = "vertical",
    },
  },
  keys = {
    -- 터미널은 tmux로 관리 (Ctrl+a C / Ctrl+a R)
    { "<leader>cb", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" },
    { "<leader>cs", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
    { "<leader>ca", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
    { "<leader>cd", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Deny diff" },
  },
}
