--core
require("core.keymaps") 
require("core.lazyplug.config")
require('core.options')
require("core.colorscheme")

-- plugins configure
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.neotree") 
require("plugins.lualine")
--require("plugins.multicursor")
require("plugins.bufferline")
require("plugins.smoothcursor")
require("plugins.hop")
require("plugins.terminal")
require("plugins.noice")
require("plugins.notify")
require("plugins.comments")
require("plugins.clousebuffer")
require("plugins.coderunner")
require("plugins.colorizer")
require("plugins.todo")
require("plugins.gitsing")
require("plugins.cinnamon")
require("plugins.cowboy")
require("plugins.indentLine")
require("plugins.yazinvim")
require("plugins.context")
require("plugins.lazygit")
require("plugins.dashboard")
require("plugins.cmp")
require("plugins.mason")
-- require("plugins.autosession")
-- require("plugins.")
require("plugins.null-ls")

-- Подключаем настройки для LSP
require('plugins.lsp.python')  -- Python LSP
require('plugins.lsp.js')      -- JS/TS LSP
require('plugins.lsp.css')     -- CSS LSP
require('plugins.lsp.sql')     -- SQL LSP

-- Подключаем настройки для линтеров
require('plugins.linters.pylint')   -- pylint
require('plugins.linters.flake8')   -- flake8
require('plugins.linters.eslint')   -- eslint
require('plugins.linters.stylelint')  -- stylelint

-- Подключаем настройки для форматеров
require('plugins.formatters.black')    -- black
require('plugins.formatters.prettierd')    -- prettierd
require('plugins.formatters.sqlfluff')    -- sqlfluff

-- Настройка клавиш
require('plugins.utils.mappings')     -- Маппинги

