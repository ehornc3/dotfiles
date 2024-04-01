---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    ["<leader>u"] = { "<cmd>UndotreeToggle<cr>", "Toggle undo tree" },

    ["n"] = { "nzzzv" },
    ["N"] = { "Nzzzv" },
    ["Q"] = { "<nop>" }, -- Ex mode

    ["<leader>pt"] = { "<nop>" }, -- pick hidden term (nvterm is disabled)
    ["<leader>n"] = { "<nop>" }, -- toggle line numbers
    ["<leader>rn"] = { "<nop>" }, -- toggle relative line numbers

    ["<leader>y"] = { [["+y]], "Yank to clipboard" },
    ["<leader>Y"] = { [["+Y]], "Yank line to clipboard" },
    ["<leader>p"] = { [["+p]], "Paste from clipboard", opts = { nowait = true } },
    ["<leader>P"] = { [["+P]], "Paste from clipboard", opts = { nowait = true } },

    ["<C-h>"] = { "<cmd> KittyNavigateLeft <CR>", "Kitty window left" },
    ["<C-l>"] = { "<cmd> KittyNavigateRight <CR>", "Kitty window right" },
    ["<C-j>"] = { "<cmd> KittyNavigateDown <CR>", "Kitty window down" },
    ["<C-k>"] = { "<cmd> KittyNavigateUp <CR>", "Kitty window up" },
  },
  v = {
    [">"] = { ">gv", "indent" },

    ["<leader>y"] = { [["+y]], "Yank to clipboard" },
    ["<leader>p"] = { [["+p]], "Paste from clipboard" },
    ["<leader>P"] = { [["+P]], "Paste from clipboard" },
  },
}

return M
