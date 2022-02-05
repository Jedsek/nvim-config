for _, config in pairs(require("nvim-treesitter.parsers").get_parser_configs()) do
  config.install_info.url = config.install_info.url:gsub("https://github.com/", "https://github.com.cnpmjs.org/")
end

require"nvim-treesitter.configs".setup {
    ensure_installed = { "c","css","html","json","lua","rust","toml","typescript","vala","vim" },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "<CR>",
            node_incremental = "<CR>",
            node_decremental = "<BS>",
            scope_incremental = "<TAB>",
        }
    },
    indent = {
        enable = true
    }
}
