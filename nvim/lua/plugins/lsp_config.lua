require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls"}, -- Add the LSPs you want to use
})

-- For completions
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup{
	capabilities = capabilities,
}

