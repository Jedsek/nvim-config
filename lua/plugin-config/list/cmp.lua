local lspkind = require("lspkind")
local cmp = require"cmp"

cmp.setup {
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },

    mapping = require"keymaps".cmp(cmp),

    sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
    }, { { name = "buffer" },
        { name = "path" }
        }),

    formatting = {
        format = lspkind.cmp_format({
            with_text = true,
            maxwidth = 50,
            before = function (entry, vim_item)
                vim_item.menu = "["..string.upper(entry.source.name).."]"
                return vim_item
            end
        })
    },
}

cmp.setup.cmdline("/", {
    sources = {
    { name = "buffer" }
    }
})

cmp.setup.cmdline(":", {
    sources = cmp.config.sources({
    { name = "path" }
    }, {
        { name = "cmdline" }
        })
})





require("luasnip.loaders.from_vscode").load()
