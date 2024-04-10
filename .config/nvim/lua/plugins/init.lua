---@type NvPluginSpec[]
return {

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = require "configs.mason"
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "configs.treesitter"
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = require "configs.nvimtree" 
  },

  {
    "NvChad/nvterm",
    enabled = false,
  },

  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "mbbill/undotree",
    cmd = { "UndotreeToggle" },
    config = function()
      require "configs.undotree"
    end
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
    }
  },
}
