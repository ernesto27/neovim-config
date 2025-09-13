require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "gopls", "ts_ls" }
vim.lsp.enable(servers)

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

-- read :h vim.lsp.config for changing options of lsp servers 
for _, lsp in pairs(servers) do
    lspconfig[lsp].setup {
        on_attach = nvlsp.on_attach,
        capabilities = nvlsp.capabilities,
        on_init = nvlsp.on_init,
    }
  
end