local keymaps = {}
local list = {
    "basic",
    "file",
    "lsp",
    "symbols-outline",
    "term",
    "unimpaired",
}
local list_insert = {
    "cmp",
}


for _, keymap in pairs(list) do
    require ("keymaps.list."..keymap)
end

for _, keymap in pairs(list_insert) do
    local field = require("keymaps.list."..keymap)
    keymaps[keymap] = field
end

return keymaps
