vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'vim-scripts/bufexplorer.zip'
    use 'kyazdani42/nvim-tree.lua'
    use 'nvim-lua/plenary.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-lualine/lualine.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'airblade/vim-gitgutter'
    use 'junegunn/gv.vim'
    use 'majutsushi/tagbar'

    -- color schemes
    use 'sainnhe/gruvbox-material'
    use 'EdenEast/nightfox.nvim'
    use 'dracula/vim'
    use 'ishan9299/nvim-solarized-lua'


    -- Tim Pope
    use 'tpope/vim-commentary'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-surround'
    use 'tpope/vim-sensible'
    use 'tpope/vim-rsi'
    use 'tpope/vim-unimpaired'
    use 'windwp/nvim-autopairs'

    -- treesitter related
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'nvim-treesitter/nvim-treesitter-refactor'
    use 'nvim-treesitter/nvim-treesitter-textobjects'

    -- LSP related
    use 'neovim/nvim-lspconfig'
    use 'tami5/lspsaga.nvim' --> icons for LSP diagnostics
    use 'onsails/lspkind-nvim' --> vscode-like pictograms for neovim lsp completion items

    -- auto completion
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-path'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'

    use {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    use {
        'nathom/filetype.nvim',
        config = function()
            require("filetype").setup({})
        end,
    }
end)
