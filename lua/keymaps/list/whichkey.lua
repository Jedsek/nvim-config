local whichkeys = {
    ["<leader>f"] = {
        name = "+File",
        f = { "<cmd>Telescope find_files<cr>", "Find" },
        t = { "<cmd>NvimTreeToggle<cr>", "Tree" },
        s = { "<cmd>w<cr>", "Save one" },
        S = { "<cmd>wa<cr>", "Save all" },
    },
    ["<leader>s"] = { "<cmd>SymbolsOutline<cr>", "Symbols" },
    ["<leader>q"] = { "q", "Macro"},
    ["<leader>="] = { "<cmd>lua vim.lsp.buf.formatting()<cr>", "Lsp-Format" },
    ["<leader>a"] = { "<cmd>Lspsaga code_action<cr>", "Code-Action" },
    ["<leader>r"] = { "<cmd>Lspsaga rename<cr>", "Rename"}
}

return whichkeys
