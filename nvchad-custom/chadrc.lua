local M = {}

M.ui = {
  theme_toggle = { "ayu-dark", "one_light" },
  theme = "tokyonight",
}

M.plugins = require "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M