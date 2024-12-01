-- lua/plugins/lsp/css.lua
local nvim_lsp = require('lspconfig')

-- Настройка для css-lsp (CSS LSP)
nvim_lsp.cssls.setup({
    on_attach = function(client, bufnr)
        -- Настройка горячих клавиш
    end,
})

