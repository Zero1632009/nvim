return require('packer').startup(function(use)
	-- Packer
	use 'wbthomason/packer.nvim'
	-- Themes
	use 'folke/tokyonight.nvim'
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
	-- Telescope File Browser
	use { "nvim-telescope/telescope-file-browser.nvim" }
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
end)
