-- lua/plugins/lsp/python.lua
local nvim_lsp = require('lspconfig')

-- Настройка для pyright (Python LSP)
nvim_lsp.pyright.setup({
    on_attach = function(client, bufnr)
        -- Настройка горячих клавиш для диагностики
    end,
})

