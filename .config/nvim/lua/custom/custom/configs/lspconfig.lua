local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

local servers = {
	"angularls",
	"html",
	"cssls",
	"omnisharp",
	"rust_analyzer",
	"tsserver",
	"wgsl_analyzer",
  "emmet_ls"
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

lspconfig["omnisharp"].setup({
	cmd = {
		os.getenv("XDG_CONFIG_HOME") .. "/local/share/nvim/mason/bin/omnisharp",
		"--languageserver",
		"--hostPID",
		tostring(vim.fn.getpid()),
	},
	on_attach = on_attach,
	capabilities = capabilities,
})

lspconfig["emmet_ls"].setup({
  -- on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "svelte", "pug", "typescriptreact", "vue" },
  init_options = {
    html = {
      options = {
        -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
        ["bem.enabled"] = true,
      },
    },
  }
})

lspconfig["wgsl_analyzer"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "wgsl" },
	cmd = {
		os.getenv("XDG_CONFIG_HOME") .. "/local/share/nvim/mason/bin/wgsl_analyzer"
	},
})
