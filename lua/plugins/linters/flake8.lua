-- lua/plugins/linters/flake8.lua
local null_ls = require('null-ls')

null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.flake8,
    },
})

