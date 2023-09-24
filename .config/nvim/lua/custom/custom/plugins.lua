local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {
	{
    "rcarriga/nvim-notify",
    -- lazy = false,
		config = function()
			require("custom.configs.nvim-notify")
		end,
	},

  {
    "mbbill/undotree",
    lazy = false,
  },

	{
    "phaazon/hop.nvim",
		branch = "v2",
		config = function()
			require("hop").setup({
				multi_windows = true,
			})
		end,
	},

	{
    "glepnir/lspsaga.nvim",
    lazy = false,
		setup = function()
			require("core.lazy_load").on_file_open("lspsaga.nvim")
		end,
		config = function()
			require("custom.configs.lspsaga")
		end,
	},

  -- line ruler
	{
    "lukas-reineke/indent-blankline.nvim",
		override_options = {
			show_current_context_start = false,
		},
	},

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
