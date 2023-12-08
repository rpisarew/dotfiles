return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        csharpier = {
          args = { "--write-stdout", "--no-cache", "$FILENAME" },
        },
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter-context",
    -- enabled = false,
  },

  {
    "folke/tokyonight.nvim",
    opts = { style = "night" },
  },

  {
    "folke/todo-comments.nvim",
    opts = {
      highlight = {
        before = "", -- "fg" or "bg" or empty
        keyword = "fg", -- "fg", "bg", "wide", "wide_bg", "wide_fg" or empty. (wide and wide_bg is the same as bg, but will also highlight surrounding characters, wide_fg acts accordingly but with fg)
        after = "", -- "fg" or "bg" or empty
        pattern = [[.*<(KEYWORDS)(\(.*\))?\s*:]], -- pattern or table of patterns, used for highlighting (vim regex)
      },
      search = {
        pattern = [[\b(KEYWORDS)(\(.*\))?:]], -- ripgrep regex
      },
    },
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
        },
        window = {
          mappings = {
            ["L"] = "open_nofocus",
          },
        },
        commands = {
          open_nofocus = function(state)
            require("neo-tree.sources.filesystem.commands").open(state)
            vim.schedule(function()
              vim.cmd([[Neotree focus]])
            end)
          end,
        },
      },
      window = {
        mappings = {
          ["l"] = "open_with_window_picker",
          ["h"] = "close_node",
        },
      },
    },
  },
}
