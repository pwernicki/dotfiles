require("nvim-lsp-installer").setup {
  automatic_installation = true
}

local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup {
  lua_ls = {
    Lua = {
      workspace = { checkThirdParty = false },
      telemetry = { enable = false },
    },
  },
}

lspconfig.pyright.setup {}
lspconfig.rust_analyzer.setup {}
lspconfig.yamlls.setup {}
lspconfig.dockerls.setup {}
lspconfig.terraformls.setup {}
lspconfig.bashls.setup {}
lspconfig.clangd.setup {}
lspconfig.ansiblels.setup {}
