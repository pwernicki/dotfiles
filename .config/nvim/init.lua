require ('options')
require ('plugins')
require ('keymaps')
require ('bufferline-config')
require ('lualine-config')
require ('cmp-config')
require ('lsp-config')
require ('treesitter-config')
require ('telescope-config')
require ('alpha-config')
require ('autopairs-config')
require ('impatient-config')
require ('nvim-tree-config')
require ('project-config')
require ('null-ls')
require ('mason-config')

vim.cmd("colorscheme nightfox")
vim.cmd("au BufRead,BufNewFile */playbooks/*.yml set filetype=yaml.ansible")
vim.cmd("au BufRead,BufNewFile */tasks/*.yml set filetype=yaml.ansible")
vim.cmd("au BufRead,BufNewFile */roles/*.yml set filetype=yaml.ansible")
vim.cmd("let g:coc_filetype_map = { 'yaml.ansible': 'ansible',}")
