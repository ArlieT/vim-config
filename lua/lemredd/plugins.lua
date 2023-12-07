-- Boostrap `packer.nvim`
-- https://github.com/wbthomason/packer.nvim#bootstrapping
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	-- Yanked from the `packer.nvim` repo itself.
	use "wbthomason/packer.nvim"

	-- TODO: improve sorting performance
	use {
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } }
	}

	-- SECTION: git-related dependencies

	-- shows the line change (+/-/~) signs
	use 'airblade/vim-gitgutter'

	-- Every vim user must use this.
	use 'tpope/vim-fugitive'

	-- ENDSECTION

	-- statusline and tabs
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }

	-- Treesitter
	use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
	use 'nvim-treesitter/nvim-treesitter-context'

	-- Themes to use.
	use "navarasu/onedark.nvim"

	-- LSP! Yanked straight from ThePrimeagen's `packer.lua`.
	-- https://github.com/ThePrimeagen/init.lua/blob/master/lua/theprimeagen/packer.lua
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'saadparwaiz1/cmp_luasnip' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-nvim-lua' },

			-- Snippets
			{ 'L3MON4D3/LuaSnip' },
			{ 'rafamadriz/friendly-snippets' },
		}
	}

	-- Markdown Previewer
	use({
		"iamcco/markdown-preview.nvim",
		run = function() vim.fn["mkdp#util#install"]() end,
	})

	-- Git gud
	use "ThePrimeagen/vim-be-good"

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require('packer').sync()
	end
end)
