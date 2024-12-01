-- lua/plugins/lsp/js.lua
local nvim_lsp = require('lspconfig')

-- Настройка для tsserver (JS/TS LSP)
nvim_lsp.ts_ls.setup({
    on_attach = function(client, bufnr)
        -- Настройка горячих клавиш
    end,
})

