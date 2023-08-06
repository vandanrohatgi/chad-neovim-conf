return {

	{
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		dependencies = { 'nvim-lua/plenary.nvim' } 
	},
	"folke/tokyonight.nvim",
	{
		'nvim-treesitter/nvim-treesitter', 
		 build = ':TSUpdate' ,
	},
	'ThePrimeagen/harpoon',
	'tpope/vim-fugitive',
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/nvim-cmp",
	'L3MON4D3/LuaSnip',
	{
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	},
	"mfussenegger/nvim-dap",
	{
		"windwp/nvim-autopairs",
		config =  function()
			npairs=require 'nvim-autopairs'
            npairs.setup()
		end
	},
}
