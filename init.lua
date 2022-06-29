vim.api.nvim_set_option('syntax', 'on')
vim.cmd('colorscheme morning')
vim.api.nvim_set_option('ignorecase', true)
vim.api.nvim_set_option('incsearch', true)

-- ** PLUGINS **
require('plugins')

-- ** LSP ** https://github.com/neovim/nvim-lspconfig#quickstart
-- https://github.com/neovim/nvim-lspconfig/wiki/Autocompletion#coq_nvim
require'lspconfig'.pyright.setup{}

-- https://github.com/neovim/nvim-lspconfig/wiki/Autocompletion#coq_nvim
require('coq_nvim') 

-- * LUALINE *
require('lualine').setup()
