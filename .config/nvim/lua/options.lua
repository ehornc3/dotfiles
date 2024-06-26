require "nvchad.options"

local autocmd = vim.api.nvim_create_autocmd

--Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.isfname:append("@-@")
vim.opt.colorcolumn = "80"
vim.opt.mouse = nil
