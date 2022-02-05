local plugins = {
    "auto-pairs",
    "bufferline",
    "cmp",
    "comments",
    "hop",
    "indent-blankline",
    "lspsaga",
    "lualine",
    "nvim-treesitter",
    "symbols-outline",
    "term",
    "tree",
    "which-key",
}

for _, plugin in pairs(plugins) do
    require ("plugin-config.list."..plugin)
end
