local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

map("", "<space>", "<nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
map("n", "<c-h>", "<c-w>h", opts)
map("n", "<c-j>", "<c-w>j", opts)
map("n", "<c-k>", "<c-w>k", opts)
map("n", "<c-l>", "<c-w>l", opts)


-- Navigate buffers
map("n", "<s-l>", "<cmd>bnext<cr>", opts)
map("n", "<s-h>", "<cmd>bprevious<cr>", opts)


-- Visual --
-- Stay in indent mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)


-- Move text up and down
map("v", "<a-j>", "<cmd>m .+1<cr>==", opts)
map("v", "<a-k>", "<cmd>m .-2<cr>==", opts)
map("v", "p", '"_dP', opts)

map("n", "<c-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>", opts)
map("n", "<c-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>", opts)
