local Util = require("lazyvim.util")

return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      "jvgrootveld/telescope-zoxide",
      config = function()
        Util.on_load("telescope.nvim", function()
          require("telescope").load_extension("zoxide")
        end)
      end,
    },
  },
}
