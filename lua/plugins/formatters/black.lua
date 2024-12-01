-- lua/plugins/formatters/black.lua
local null_ls = require('null-ls')

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.black.with({
            extra_args = { "--fast" },
        }),
    },
})

