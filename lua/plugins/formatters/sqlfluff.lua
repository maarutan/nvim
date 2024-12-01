-- lua/plugins/formatters/sqlfluff.lua
local null_ls = require('null-ls')

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.sqlfluff,
    },
})

