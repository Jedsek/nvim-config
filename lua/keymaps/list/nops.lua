local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

local keys = {
    "<space>",
    "<c-r>",
}

for _, key in pairs(keys) do
    map("n", key, "<nop>", opts)
end

