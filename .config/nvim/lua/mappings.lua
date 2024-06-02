require "nvchad.mappings"

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>u", "<cmd>UndotreeToggle<cr>", { desc = "Toggle undo tree" })
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("n", "Q", "<nop>") -- Ex mode
map("n", "<leader>pt", "<nop>") -- nvterm picker
map("n", "<leader>n", "<nop>") -- toggle line numbers
map("n", "<leader>rn", "<nop>") -- toggle relative line numbers
map("n", "<leader>y", [["+y]], { desc = "Yank to clipboard" })
map("n", "<leader>Y", [["+Y]], { desc = "Yank line to clipboard" })
map("n", "<leader>p", [["+p]], { desc = "Paste from clipboard" })
map("n", "<leader>P", [["+P]], { desc = "Paste from clipboard" })
map("n", "<C-h>", "<cmd> KittyNavigateLeft <CR>", { desc = "Kitty window left" })
map("n", "<C-l>", "<cmd> KittyNavigateRight <CR>", { desc = "Kitty window right" })
map("n", "<C-j>", "<cmd> KittyNavigateDown <CR>", { desc = "Kitty window down" })
map("n", "<C-k>", "<cmd> KittyNavigateUp <CR>", { desc = "Kitty window up" })
