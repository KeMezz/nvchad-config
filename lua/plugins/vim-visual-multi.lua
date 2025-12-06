return {
  "mg979/vim-visual-multi",
  event = "BufReadPost",
  init = function()
    vim.g.VM_default_mappings = 1
  end,
}
