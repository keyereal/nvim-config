vim.api.nvim_set_option('syntax', 'on')
-- vim.cmd('colorscheme morning')
vim.cmd('colorscheme evening')
vim.cmd('set mouse+=a')
vim.cmd('set number')
--vim.api.nvim_set_option('ignorecase', true)
vim.api.nvim_set_option('incsearch', true)

-- * MAPPING SETTINGS *
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<F8>', '<Cmd>BufferClose<CR>', opts)


-- ** PLUGINS **
require('plugins')

-- ** LSP ** https://github.com/neovim/nvim-lspconfig#quickstart
-- https://github.com/neovim/nvim-lspconfig/wiki/Autocompletion#coq_nvim
require'lspconfig'.pyright.setup{}

-- https://github.com/neovim/nvim-lspconfig/wiki/Autocompletion#coq_nvim
require('coq_nvim') 

-- * LUALINE *
-- https://github.com/nvim-lualine/lualine.nvim
require('lualine').setup({options = { theme = 'material' }})

-- * TABLINE: BARBAR *
-- https://github.com/romgrk/barbar.nvim
require'barbar-config'

-- * FILE EXPLORER: NVIM-TREE *
-- https://github.com/kyazdani42/nvim-tree.lua#setup
require("nvim-tree").setup()
map('n', '<F3>', '<Cmd>NvimTreeToggle<CR>', opts)
