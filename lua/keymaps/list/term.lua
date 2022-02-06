local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

map("", "<c-t>", "<cmd>Lspsaga toggle_floaterm<cr>", opts)
map("t", "<c-t>", "<C-\\><C-n><cmd>Lspsaga toggle_floaterm<cr>", opts)
