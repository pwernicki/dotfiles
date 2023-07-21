require("mason").setup{}

require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "ansiblels", "bashls", "dockerls", "pyright", "terraformls", "yamlls" },
}
