-- lua/plugins/lsp/sql.lua
local nvim_lsp = require('lspconfig')

-- Настройка для sqls (SQL LSP)
nvim_lsp.sqls.setup({
    cmd = { "sql-language-server", "serve" },
    filetypes = { "sql", "mysql", "postgresql", "sqlite" },
    on_attach = function(client, bufnr)
        -- Настройка горячих клавиш
    end,
})

