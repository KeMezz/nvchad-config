require "nvchad.autocmds"

-- 非アクティブウィンドウの背景を暗くする
vim.api.nvim_set_hl(0, "NormalNC", { bg = "#181825" })

-- Hide terminal buffers from tab list
vim.api.nvim_create_autocmd("TermOpen", {
  callback = function()
    vim.opt_local.buflisted = false
  end,
})

-- Auto reload file on focus or buffer switch
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold" }, {
  callback = function()
    if vim.fn.getcmdwintype() == "" then
      vim.cmd "checktime"
    end
  end,
})

-- Toggle relative/absolute line numbers based on mode
vim.api.nvim_create_autocmd("InsertEnter", {
  callback = function()
    vim.opt.relativenumber = false
  end,
})

vim.api.nvim_create_autocmd("InsertLeave", {
  callback = function()
    vim.opt.relativenumber = true
  end,
})
