local M = {}

M.blankline = {
	n = {
		--[ unbind ]
		["<leader>cc"] = { "", "" },
	},
}

M.general = {
	i = {
		["jk"] = { "<ESC>", "escape vim" },
	},

	n = {
		[";"] = { ":", "command mode", opts = { nowait = true } },
		["<leader>w"] = { "<cmd> w <CR>", " save" },
		["<leader>,"] = { "<cmd> e # <CR>", "goto last buffer" },
		["<F5>"] = { "<cmd> UndotreeToggle <CR>", "undotree" },

		--[ window ]
		["<leader>c"] = { "<cmd> wincmd c <CR>", "close window" },
		["<leader>tn"] = { "<cmd> tabnew <CR>", "new tab" },
		["<leader>tc"] = { "<cmd> tabclose <CR>", "close tab" },
		["<leader><tab>"] = { "<cmd> tabNext <CR>", "goto next tab" },

		["<leader> "] = { "<cmd> Telescope find_files <CR>", "find file" },

		--[ git ]
		["<leader>gg"] = {
			function()
				require("nvterm.terminal").send("lazygit", "float")
				vim.cmd("wincmd p")
			end,
			"new horizontal term",
		},
		["<leader>gb"] = { "<cmd> Gitsigns blame_line <CR>", "blame line" },

		--[ packer ]
		["<leader>pc"] = { "<cmd> PackerCompile <CR>", "packer compile" },
		["<leader>ps"] = { "<cmd> PackerSync <CR>", "packer sync" },

		--[ unbind ]
		["<leader>n"] = { "", "" },
		["<leader>rn"] = { "", "" },
	},

	v = {
		--[ better indenting ]
		["<"] = { "<gv" },
		[">"] = { ">gv" },
	},
}

M.lspconfig = {
	n = {
		["gD"] = { "<cmd>wincmd v | :lua vim.lsp.buf.definition()<cr>", "goto definition split" },
		["gh"] = { "<cmd> Lspsaga lsp_finder <CR>", "lsp finder" },
		["gp"] = { "<cmd> Lspsaga peek_definition <CR>", "peek definition" },
		["<leader>la"] = { "<cmd> Lspsaga code_action <CR>", "code action" },
		["<leader>ld"] = { "<cmd> Telescope diagnostics bufnr=0 theme=get_ivy <CR>", "buffer diagnostics" },
		["<leader>lD"] = { "<cmd> Lspsaga show_cursor_diagnostics <CR>", "cursor diagnostics" },
		["<leader>li"] = { "<cmd> LspInfo <CR>", "info" },
		["<leader>lI"] = { "<cmd> Mason <CR>", "Mason Info" },
		["<leader>lf"] = { "<cmd> lua vim.lsp.buf.format { async = true } <CR>", "formate code" },
		["<leader>lp"] = { "<cmd> Lspsaga peek_definition <CR>", "peek definition" },
		["<leader>lr"] = { "<cmd> Lspsaga rename <CR>", "rename" },
		["<leader>ls"] = { "<cmd> Telescope lsp_document_symbols <CR>", "document symbols" },
		["<leader>lS"] = { "<cmd> Telescope lsp_dynamic_workspace_symbols <CR>", "workspace symbols" },
		["<leader>lw"] = { "<cmd> Telescope diagnostics <CR>", "diagnostics" },
		["<leader>o"] = { "<cmd> LSoutlineToggle <CR>", "toggle outline" },

		--[ unbind ]
		["<leader>ca"] = { "", "" },
		["<leader>fm"] = { "", "" },
		-- ["<leader>q"] = { "", "" },

		["<leader>wa"] = { "", "" },
		["<leader>wr"] = { "", "" },
		["<leader>wl"] = { "", "" },
	},
}

M.nvimtree = {
	n = {
		--[ toggle ]
		["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "focus nvimtree" },

		--[ unbind ]
		["<C-n>"] = { "", "" },
	},
}

M.nvterm = {
	t = {
		--[ toggle in terminal mode ]
		["<C-t>"] = {
			function()
				require("nvterm.terminal").toggle("float")
			end,
			"toggle floating term",
		},
	},

	n = {
		--[ toggle in normal mode ]
		["<C-t>"] = {
			function()
				require("nvterm.terminal").toggle("float")
			end,
			"toggle floating term",
		},
	},
}

M.tabufline = {
	n = {
		-- [ close buffer + hide terminal buffer ]
		["<leader>q"] = {
			function()
				require("nvchad_ui.tabufline").close_buffer()
			end,
			"close buffer",
		},
		--[ unbind ]
		["<leader>x"] = { "", "" },
	},
}

M.telescope = {
	n = {
		--[ find ]
		["<leader>fp"] = { "<cmd> Telescope projects <CR>", "find projects" },

		--[ git ]
		["<leader>gs"] = { "<cmd> Telescope git_status <CR>", "git status" },
		["<leader>gc"] = { "<cmd> Telescope git_commits <CR>", "git commits" },

		--[ unbind ]
		["<leader>gt"] = { "", "" },
		["<leader>cm"] = { "", "" },
	},
}

M.whichkey = {
	plugin = true,

	n = {
		--[ unbind ]
		["<leader>wK"] = { "", "" },
		["<leader>wk"] = { "", "" },
	},
}

M.hop = {
	n = {
		["f"] = { "<cmd> lua require'hop'.hint_char1() <CR>", "TODO" },
		["F"] = { "<cmd> lua require'hop'.hint_char2() <CR>", "TODO" },
	},
}

return M
