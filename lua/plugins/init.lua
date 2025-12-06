return {
  -- Code formatter
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- Format on save
    opts = require "configs.conform",
  },

  -- LSP configuration
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- Test new blink completion
  -- { import = "nvchad.blink.lazyspec" },

  -- Treesitter syntax parsing
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css"
  		},
  	},
  },
}
