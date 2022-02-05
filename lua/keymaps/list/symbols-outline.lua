local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- SymbolsOutline
map("n", "<leader>s", "<cmd>SymbolsOutline<cr>", opts)
