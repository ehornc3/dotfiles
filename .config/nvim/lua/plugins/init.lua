return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css"
      },
    },
  },

  {
    "NvChad/nvterm",
    enabled = false,
  },

  {
    "mbbill/undotree",
    cmd = { "UndotreeToggle" },
    opts = require "configs.undotree",
  },

  {
    "ThePrimeagen/vim-be-good",
    cmd = { "VimBeGood" },
  },

  {
    "knubie/vim-kitty-navigator",
    cmd = {
      "KittyNavigateLeft",
      "KittyNavigateRight",
      "KittyNavigateDown",
      "KittyNavigateUp",
    },

  },

  {
    "folke/which-key.nvim",
    opts = require "configs.whichkey",
    lazy = false,
  }

}
