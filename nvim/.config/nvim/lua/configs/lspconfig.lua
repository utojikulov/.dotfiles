local config = require("nvchad.configs.lspconfig")
local on_attach = config.on_attach
local capabilities = config.capabilities

vim.lsp.config("ts_ls", {
    on_attach = on_attach,
    capabilities = capabilities,
    init_options = {
        preferences = {
            disableSuggestions = true,
        }
    },
})
vim.lsp.enable("ts_ls")
-- read :h vim.lsp.config for changing options of lsp servers 

vim.o.updatetime = 1200
vim.api.nvim_create_autocmd("CursorHold", {
    callback = function()
        vim.diagnostic.open_float(nil, { focus = false })
    end,
})
