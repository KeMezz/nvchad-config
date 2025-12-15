-- nvim-cmpのキーマッピングをカスタマイズ
return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.mapping = vim.tbl_extend("force", opts.mapping or {}, {
      -- <C-Space>の代わりに<C-y>で補完メニューを表示
      ["<C-y>"] = cmp.mapping.complete(),
    })
    return opts
  end,
}
