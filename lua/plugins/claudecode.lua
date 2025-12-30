return {
  "coder/claudecode.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = "VeryLazy", -- WebSocketサーバーを起動時にロード
  opts = {
    terminal = {
      provider = "none", -- tmux paneで直接実行するため無効化
    },
    diff_opts = {
      open_in_new_tab = true,
      hide_terminal_in_new_tab = false,
      keep_terminal_focus = true,
      layout = "vertical",
    },
  },
  keys = {
    -- ターミナルはtmuxで管理 (Ctrl+a C / Ctrl+a R)
    { "<leader>cb", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" },
    { "<leader>cs", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
    { "<leader>ca", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
    { "<leader>cd", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Deny diff" },
  },
}
