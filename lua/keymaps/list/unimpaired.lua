local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

map("n", "[b", "<cmd>bp<cr>", opts)
map("n", "]b", "<cmd>bn<cr>", opts)

map("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opts)
map("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<cr>", opts)
