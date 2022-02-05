local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

map("n", "<leader>fs", "<cmd>w<cr>", opts)
map("n", "<leader>fS", "<cmd>wa<cr>", opts)
map("n", "<leader>q", "<cmd>q<cr>", opts)

-- NvimTree
map("n", "<leader>ft", "<cmd>NvimTreeToggle<cr>", opts)

-- FZF
map("n", "<leader>ff", "<cmd>FZF<cr>", opts)
