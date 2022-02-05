local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

local normal_key_to_cmd = {
    ["<leader>r"]    =    "<cmd>Lspsaga rename<cr>",
    ["<leader>a"]    =    "<cmd>Lspsaga code_action<cr>",
    ["<leader>="]    =    "<cmd>lua vim.lsp.buf.formatting()<cr>",
    ["gd"]           =    "<cmd>Lspsaga preview_definition<cr>",
    ["gk"]           =    "<cmd>Lspsaga hover_doc<cr>",
    ["gi"]           =    "<cmd>Lspsaga implement<cr>",
    ["gr"]           =    "<cmd>lua vim.lsp.buf.references()<cr>",
    ["go"]           =    "<cmd>Lspsaga show_line_diagnostics<cr>",
}

local visual_key_to_cmd = {
    ["<leader>a"]    =    "<cmd>Lspsaga range_code_action<cr>",
}

for key, cmd in pairs(normal_key_to_cmd) do
    map("n", key, cmd, opts)
end

for key, cmd in pairs(visual_key_to_cmd) do
   map("v", key, cmd, opts)
end
