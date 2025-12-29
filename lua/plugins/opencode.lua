-- opencode AI アシスタント統合
return {
  "NickvanDyke/opencode.nvim",
  dependencies = {
    "folke/snacks.nvim",
  },
  init = function()
    -- autoreadを有効化（opencodeがファイルを編集した時に自動リロード）
    vim.o.autoread = true
  end,
  keys = {
    { "<leader>oo", function() require("opencode").toggle() end, desc = "Toggle opencode" },
    { "<leader>op", function() require("opencode").ask() end, desc = "Prompt opencode" },
    { "<leader>op", function() require("opencode").ask("@this: ") end, mode = "x", desc = "Prompt with selection" },
    { "<leader>os", function() require("opencode").select() end, mode = { "n", "x" }, desc = "Select opencode action" },
    { "go", function() return require("opencode").operator("@this ") end, mode = { "n", "x" }, expr = true, desc = "Add range to opencode" },
    { "goo", function() return require("opencode").operator("@this ") .. "_" end, expr = true, desc = "Add line to opencode" },
  },
}
