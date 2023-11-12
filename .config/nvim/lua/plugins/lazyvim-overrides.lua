return {
  {
    "nvim-treesitter/nvim-treesitter-context",
    enabled = false,
  },

  {
    "folke/tokyonight.nvim",
    opts = { style = "night" },
  },

  {
    "folke/todo-comments.nvim",
    opts = {
      highlight = {
        before = "bg", -- "fg" or "bg" or empty
        keyword = "bg", -- "fg", "bg", "wide", "wide_bg", "wide_fg" or empty. (wide and wide_bg is the same as bg, but will also highlight surrounding characters, wide_fg acts accordingly but with fg)
        after = "bg", -- "fg" or "bg" or empty
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
          ["l"] = "open",
          ["h"] = "close_node",
        },
      },
    },
  },
}
