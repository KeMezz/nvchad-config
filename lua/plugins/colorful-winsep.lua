-- アクティブウィンドウのボーダーをカラフルに表示
return {
  "nvim-zh/colorful-winsep.nvim",
  event = "WinNew",
  config = function()
    require("colorful-winsep").setup({
      -- catppuccin mauve カラー (ハイライトグループを設定)
      hi = {
        fg = "#cba6f7",
      },
      -- rounded スタイル
      symbols = { "─", "│", "╭", "╮", "╰", "╯" },
      -- アニメーション無効
      animate = { enabled = false },
      -- 分割されていない場合は非表示
      no_exec_files = { "packer", "TelescopePrompt", "mason", "NvimTree", "lazy" },
    })
  end,
}
