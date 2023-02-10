local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  b.code_actions.eslint_d,
  -- b.code_actions.gitsigns,

  b.formatting.prettierd,
  b.formatting.stylua,
  b.formatting.clang_format,
  b.formatting.rustfmt,
  -- b.formatting.csharpier.with {
  --   generator_opts = {
  --     command = "dotnet",
  --     args = {
  --       "csharpier",
  --       "--write-stdout",
  --     },
  --   },
  -- },

  -- b.diagnostics.cspell,

  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
  b.diagnostics.eslint_d.with {
    condition = function(utils)
      return utils.root_has_file {
        ".eslintrc.cjs",
        ".eslintrc.js",
        ".eslintrc.json",
        ".eslintrc.yaml",
        ".eslintrc.yml",
      }
    end,
  },
}

null_ls.setup {
  debug = true,
  sources = sources,
}
