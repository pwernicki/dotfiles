require("nvim-lsp-installer").setup {
  automatic_installation = true
}

local lspconfig = require('lspconfig')

lspconfig.sumneko_lua.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
}
lspconfig.pyright.setup {}
lspconfig.rust_analyzer.setup {}
lspconfig.yamlls.setup {}
lspconfig.dockerls.setup {}
lspconfig.terraformls.setup {}
lspconfig.bashls.setup {}
