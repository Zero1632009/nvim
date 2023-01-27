return require('packer').startup(function(use)
	-- Packer
	use 'wbthomason/packer.nvim'
	-- Themes
	use {
		'luisiacc/gruvbox-baby',
		branch = 'main',
	}
	-- NvimTree
	use {
	  'nvim-tree/nvim-tree.lua',
	  requires = {
	    'nvim-tree/nvim-web-devicons',
	  },
	  tag = 'nightly'
  	}
	-- Telescope
	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}
	-- LuaLine
	use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	-- Which Key
	use {
	  "folke/which-key.nvim",
	  config = function()
	    vim.o.timeout = true
	    vim.o.timeoutlen = 300
	    require("which-key").setup {}
	  end
	}
	-- Nvim AutoPairs
	use {
		"windwp/nvim-autopairs",
	    config = function() require("nvim-autopairs").setup {} end
	}
	-- TreeSitter
	use {
		"nvim-treesitter/nvim-treesitter",
		run = ':TSUpdate'
	}
	-- LSP
	use {
	    "williamboman/mason.nvim",
	    "williamboman/mason-lspconfig.nvim",
	    "neovim/nvim-lspconfig",
	}
	-- Alpha
	use {
	    'goolord/alpha-nvim',
	    config = function ()
		require'alpha'.setup(require'alpha.themes.dashboard'.config)
	    end
	}
end)
