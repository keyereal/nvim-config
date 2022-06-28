-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

-- https://github.com/wbthomason/packer.nvim
return require('packer').startup(function()
use { 'echasnovski/mini.nvim', branch = 'stable', requires = {'kyazdani42/nvim-web-devicons'} }

use {
  'lewis6991/gitsigns.nvim',
  -- tag = 'release' -- To use the latest release
}

-- https://github.com/neovim/nvim-lspconfig#install
use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

-- https://github.com/ms-jpq/coq_nvim#install
-- https://github.com/neovim/nvim-lspconfig/wiki/Autocompletion#coq_nvim
use { 'ms-jpq/coq_nvim', branch = 'coq', run = 'python3 -m coq deps'}
use { 'ms-jpq/coq.artifacts', branch = 'artifacts'}
use { 'ms-jpq/coq.thirdparty', branch = '3p'}
end)
