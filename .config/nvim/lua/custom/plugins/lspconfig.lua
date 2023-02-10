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
