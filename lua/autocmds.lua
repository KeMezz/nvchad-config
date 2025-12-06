require "nvchad.autocmds"

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
