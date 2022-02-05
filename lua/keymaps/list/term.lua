local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- FTerm
map("", "<c-t>", "<cmd>lua require('FTerm').toggle()<cr>", opts)
map("t", "<c-t>", "<C-\\><C-n><cmd>lua require('FTerm').toggle()<cr>", opts)
