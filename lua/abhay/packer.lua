-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- auto install packer if not installed
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
        vim.cmd([[packadd packer.nvim]])
        return true
    end
    return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins when file is saved
-- vim.cmd([[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost packer.lua source <afile> | PackerSync
--   augroup end
-- ]])

-- autocommand for highlight on yank
vim.cmd([[
augroup highlight_yank
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=100}
augroup END
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
    return
end

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return packer.startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- color themes
    use { "catppuccin/nvim", as = "catppuccin" }
    use { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 }
    use { "navarasu/onedark.nvim" }

    use { 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } }

    use { 'theprimeagen/harpoon' }

    use { 'mbbill/undotree' }

    use { 'tpope/vim-fugitive' }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },         -- Required
            { 'hrsh7th/cmp-buffer' },       -- Optional
            { 'hrsh7th/cmp-path' },         -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lsp' },     -- Required
            { 'hrsh7th/cmp-nvim-lua' },     -- Optional

            -- snippets
            { 'L3MON4D3/LuaSnip' },             -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    }

    use { 'christoomey/vim-tmux-navigator' }

    use { 'szw/vim-maximizer' }

    use { 'numToStr/Comment.nvim' }

    use { 'nvim-tree/nvim-tree.lua' }
end)
