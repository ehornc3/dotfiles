local M = {}

M.ui = {
  ------------------------------- base46 -------------------------------------
  -- hl = highlights
  hl_add = {
    NvimTreeOpenedFolderName = { fg = "green", bold = true },
  },

  hl_override = {
    Comment = {
      italic = true,
    },
  },

  changed_themes = {},
  theme_toggle = { "gatekeeper", "one_light" },
  theme = "gatekeeper",
  transparency = false,

  cmp = {
    icons = true,
    lspkind_text = true,
    style = "default", -- default/flat_light/flat_dark/atom/atom_colored
  },

  telescope = { style = "bordered" }, -- borderless / bordered

  ------------------------------- nvchad_ui modules -----------------------------
  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "default",
    order = nil,
    modules = nil,
  },

  -- lazyload it when there are 1+ buffers
  tabufline = {
    enabled = true,
    lazyload = true,
    order = { "treeOffset", "buffers", "tabs" },
    modules = nil,
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

  cheatsheet = { theme = "grid" }, -- simple/grid

  lsp = { signature = true },
}

M.base46 = {
  integrations = {},
}

M.mappings = require "mappings"

return M
