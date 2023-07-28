vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use { "catppuccin/nvim", as = "catppuccin" }
    use ('nvim-treesitter/nvim-treesitter', {run= ':TSUpdate'})
    use ('ThePrimeagen/harpoon')
    use ('tpope/vim-fugitive')
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-buffer",
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',

    }
end)



