local list = {
    "basic",
    "cmp",
    "lsp",
    "term",
    "unimpaired",
    "whichkey",
}


for _, keymap in pairs(list) do
    require ("keymaps.list."..keymap)
end
