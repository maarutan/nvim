local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        -- Форматирование с помощью Prettier
        null_ls.builtins.formatting.prettier.with({
            command = "prettier", -- Используем глобально установленный Prettier
            filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact", "html", "css", "json", "yaml", "markdown" },
        }),
        -- Форматирование с помощью Black
        null_ls.builtins.formatting.black.with({
            command = "black", -- Используем глобально установленный Black
            extra_args = { "--line-length", "88" }, -- Устанавливаем длину строки
        }),
    },
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = vim.api.nvim_create_augroup("FormatOnSave", { clear = true }),
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({ bufnr = bufnr })
                end,
            })
        end
    end,
})

