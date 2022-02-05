local languages = {
    "bash",
    "c",
    "css",
    "html",
    "json",
    "lua",
    "rust",
    "typescript",
    "vala",
    "vim",
}

for _, lang in pairs(languages) do
    require ("lsp.list."..lang)
end

require "lsp.ui"
