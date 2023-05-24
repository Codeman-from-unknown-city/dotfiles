local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' } -- Magit
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
  requires = { {'nvim-lua/plenary.nvim'} }
}
end)

