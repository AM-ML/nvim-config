-- Packer configuration
return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- LSP Configurations
  use 'neovim/nvim-lspconfig'
  
  -- Autocompletion plugins
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip'
    }
  }
end)
