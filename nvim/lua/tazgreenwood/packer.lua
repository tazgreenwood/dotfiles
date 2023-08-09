-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
local is_bootstrap = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	is_bootstrap = true
	vim.fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
	vim.cmd [[packadd packer.nvim]]
end

require('packer').startup(function(use)
	-- Package manager
	use 'wbthomason/packer.nvim'

	-- Telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	-- Colorschemes
	use({
		'projekt0n/github-nvim-theme',
		-- config = function()
		-- 	vim.cmd('colorscheme github_dark')
		-- end
	})

	use({
		'dracula/vim',
		config = function()
			vim.cmd('colorscheme dracula')
		end
	})

	use({
		'loctvl842/monokai-pro.nvim',
		config = function()
			vim.cmd('colorscheme monokai-pro-spectrum')
		end
	})

	use({
		'rose-pine/neovim',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	})

	-- Treesitter syntax highlighting
	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

	-- Vim Sleuth auto indent
	use('tpope/vim-sleuth')

	-- Harpoon
	use('ThePrimeagen/harpoon')

	-- Undo Tree
	use('mbbill/undotree')

	-- Git Integrations
	use('tpope/vim-fugitive')
	use('lewis6991/gitsigns.nvim')
	use {
		'NeogitOrg/neogit',
		requires = {
			{ 'nvim-lua/plenary.nvim' },
		}
	}

	-- Line commenter with "gc"
	use('numToStr/Comment.nvim')

	-- Fancier statusline
	use('nvim-lualine/lualine.nvim')

	-- Add indentation guides even on blank line
	use('lukas-reineke/indent-blankline.nvim')

	-- Whitespace highlighter
	use('ntpeters/vim-better-whitespace')

	-- LSP Zero Setup
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' }, -- Required
			{ 'williamboman/mason.nvim' }, -- Optional
			{ 'williamboman/mason-lspconfig.nvim' }, -- Optional

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' }, -- Required
			{ 'hrsh7th/cmp-nvim-lsp' }, -- Required
			{ 'hrsh7th/cmp-buffer' }, -- Optional
			{ 'hrsh7th/cmp-path' }, -- Optional
			{ 'saadparwaiz1/cmp_luasnip' }, -- Optional
			{ 'hrsh7th/cmp-nvim-lua' }, -- Optional

			-- Snippets
			{ 'L3MON4D3/LuaSnip' }, -- Required
			{ 'rafamadriz/friendly-snippets' }, -- Optional
		}
	}
end)
