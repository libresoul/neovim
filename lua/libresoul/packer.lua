-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

    use {'nvim-treesitter/nvim-treesitter', tag = '0.9.2', {run = ':TSUpdate'}}

	use { 'kartikp10/noctis.nvim', requires = { 'rktjmp/lush.nvim' } }

	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

    use {
        'prettier/vim-prettier',
        run = 'yarn install --frozen-lockfile --production'
    }

	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'L3MON4D3/LuaSnip'
	use '907th/vim-auto-save'
	use 'lambdalisue/suda.vim'
	use "steelsojka/pears.nvim"
end)
