require "nvchad.mappings"

-- Custom keymaps

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Jump to buffer by number (Leader + number)
for i = 1, 9 do
  map("n", "<leader>" .. i, function()
    require("utils.buffer").go_to_buffer(i)
  end, { desc = "Go to buffer " .. i })
end

-- Hide buffer number mappings from which-key
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local ok, wk = pcall(require, "which-key")
    if ok then
      local hidden_keys = {}
      for i = 1, 9 do
        table.insert(hidden_keys, { "<leader>" .. i, hidden = true })
      end
      wk.add(hidden_keys)
    end
  end,
})

-- Window resize
map("n", "<leader>-", "<cmd>resize -5<cr>", { desc = "Resize window up" })
map("n", "<leader>=", "<cmd>resize +5<cr>", { desc = "Resize window down" })
map("n", "<leader>[", "<cmd>vertical resize -5<cr>", { desc = "Resize window left" })
map("n", "<leader>]", "<cmd>vertical resize +5<cr>", { desc = "Resize window right" })

-- Live server
map("n", "<leader>ls", "<cmd>LiveServerStart<cr>", { desc = "Live Server Start" })
map("n", "<leader>lx", "<cmd>LiveServerStop<cr>", { desc = "Live Server Stop" })

-- Git (Lazygit)
map("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })

-- Buffer reorder
map("n", "<leader>bh", function()
  require("nvchad.tabufline").move_buf(-1)
end, { desc = "Move buffer left" })
map("n", "<leader>bl", function()
  require("nvchad.tabufline").move_buf(1)
end, { desc = "Move buffer right" })

-- NvimTree toggle (NvChadのデフォルトfocusをtoggleに変更)
map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle NvimTree" })
