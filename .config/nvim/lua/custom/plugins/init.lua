local overrides = require("custom.plugins.overrides")

return {
	["goolord/alpha-nvim"] = { disable = false },

	["gpanders/editorconfig.nvim"] = {},

	["neovim/nvim-lspconfig"] = {
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.plugins.lspconfig")
		end,
	},

	["nvim-treesitter/nvim-treesitter"] = {
		override_options = overrides.treesitter,
	},

	["williamboman/mason.nvim"] = {
		override_options = overrides.mason,
	},

	["kyazdani42/nvim-tree.lua"] = {
		override_options = overrides.nvimtree,
	},

	["NvChad/nvterm"] = {
		override_options = overrides.nvterm,
	},

	["nvim-telescope/telescope.nvim"] = {
		override_options = overrides.telescope,
	},

	["lukas-reineke/indent-blankline.nvim"] = {
		override_options = {
			show_current_context_start = false,
		},
	},

	["phaazon/hop.nvim"] = {
		branch = "v2",
		config = function()
			require("hop").setup({
				multi_windows = true,
			})
		end,
	},

	["jose-elias-alvarez/null-ls.nvim"] = {
		-- after = "nvim-lspconfig",
		config = function()
			require("custom.plugins.null-ls")
		end,
	},

	["dhruvasagar/vim-dotoo"] = {},

	["rcarriga/nvim-notify"] = {
		config = function()
			require("custom.plugins.configs.nvim-notify")
		end,
	},

	["mbbill/undotree"] = {},

	["folke/which-key.nvim"] = {
		disable = false,
	},

	["ahmedkhalf/project.nvim"] = {
		after = "telescope.nvim",
		config = function()
			require("project_nvim").setup({
				scope_chdir = "tab",
			})
			require("telescope").load_extension("projects")
		end,
	},

	["glepnir/lspsaga.nvim"] = {
		setup = function()
			require("core.lazy_load").on_file_open("lspsaga.nvim")
		end,
		config = function()
			require("custom.plugins.configs.lspsaga")
		end,
	},

	["NvChad/ui"] = {
		override_options = {
			statusline = {
				separator_style = "round",
				overriden_modules = function()
					local default_modules = require("nvchad_ui.statusline.modules")

					return {
						cursor_position = function()
							return  default_modules.cursor_position() .. "%03l:%03c "
						end,
					}
				end,
			},
			tabufline = {
				lazyload = false,
			},
		},
	},

	-- TODO breaks TSModuleInfo
	-- ["nvim-orgmode/orgmode"] = {
	-- 	before = "nvim-treesitter",
	-- 	config = function()
	-- 		require("orgmode").setup_ts_grammar()
	-- 		require("orgmode").setup({
	-- 			org_agenda_files = { "~/org/*" },
	-- 		})
	-- 	end,
	-- },
}
