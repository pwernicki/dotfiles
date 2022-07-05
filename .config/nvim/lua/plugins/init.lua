local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system{'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path}
  vim.cmd [[packadd packer.nvim]]
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use "kyazdani42/nvim-web-devicons"
  use "akinsho/bufferline.nvim"
  use "nvim-lualine/lualine.nvim"
  use "EdenEast/nightfox.nvim"

  -- cmp plugins
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "saadparwaiz1/cmp_luasnip"
  use "hrsh7th/cmp-nvim-lsp"

  -- snippets
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"

  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'goolord/alpha-nvim'
  use "windwp/nvim-autopairs"
  use 'lewis6991/impatient.nvim'
  use 'kyazdani42/nvim-tree.lua'
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'pearofducks/ansible-vim'
  use "ahmedkhalf/project.nvim"

  if packer_bootstrap then
    require('packer').sync()
  end
end)
