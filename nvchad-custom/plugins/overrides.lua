local M = {}

M.treesitter = {
  ensure_installed = {
    "c",
    "c_sharp",
    "cpp",
    "css",
    "dockerfile",
    "help",
    "html",
    "json",
    "javascript",
    "jsdoc",
    "lua",
    "markdown",
    "markdown_inline",
    "rust",
    "scss",
    "toml",
    "typescript",
    "vim",
    "wgsl",
    "yaml",
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<C-n>",
      node_incremental = "<C-n>",
      scope_incremental = "<C-s>",
      node_decremental = "<C-r>",
    },
  },
}

M.mason = {
  ensure_installed = {
    "angular-language-server",
    "css-lsp",
    "eslint_d",
    "html-lsp",
    "lua-language-server",
    "omnisharp",
    "prettierd",
    "rust-analyzer",
    "typescript-language-server",
    "stylua",
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    icons = {
      show = {
        git = true,
      },
    },
  },

  view = {
    mappings = {
      list = {
        { key = { "l", "<CR>", "o" }, action = "edit", mode = "n" },
        { key = "h", action = "close_node" },
      },
    },
  },

  --[ project.nvim ]
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = true,
  },
}

M.nvterm = {
  terminals = {
    shell = "/opt/homebrew/bin/fish",
    type_opts = {
      float = {
        -- relative = "editor",
        row = 0.1,
        col = 0.1,
        width = 0.8,
        height = 0.8,
        border = "single",
      },
    },
  },
}
M.telescope = {
  -- defaults = {
  -- },
}

return M
