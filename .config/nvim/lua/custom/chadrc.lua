---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "nord" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  lsp_semantic_tokens = true, -- needs nvim v0.9, just adds highlight groups for lsp semantic tokens

  tabufline = {
    show_numbers = false,
    enabled = true,
    lazyload = true,
    btns = false
  },

  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "arrow",
    overriden_modules = function(modules)
      modules.buttons = nil
    end
    ,
  },

  nvdash = {
    load_on_startup = true,

    header = {
      "░▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒░ ",
      "░▒▓                        ▕▓▒░ ",
      "░▒▓  ▄▄  ▄▄▄ ▄▄▄ ▄ ▄ ▀ ▄▄▄ ▕▓▒░ ",
      "░▒▓  █ █ ██▄ █▄█ █▄▀ █ █▀█ ▕▓▒░ ",
      "░▒▓                        ▕▓▒░ ",
      "░▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒░ ",
    },

    buttons = {
      { "󰒲  Lazy", ":Lazy", "Lazy" },
      { "󰣪  Mason", ":Mason", "Mason" },
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
    },
  },

  telescope = {
    style = "bordered"
  }
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
