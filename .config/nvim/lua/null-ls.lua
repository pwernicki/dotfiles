local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

null_ls.setup   ({
  sources = {
    null_ls.builtins.formatting.prettier.with { extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } },
    null_ls.builtins.formatting.black.with { extra_args = { "--fast" } },
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.diagnostics.fish,
    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.diagnostics.flake8,
    null_ls.builtins.completion.spell,
  }
})

