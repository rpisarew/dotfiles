return {
  "nvimdev/lspsaga.nvim",
  config = function(_, opts)
    require("lspsaga").setup(opts)
  end,
  dependencies = {
    "nvim-treesitter/nvim-treesitter", -- optional
    -- "nvim-tree/nvim-web-devicons", -- optional
  },
  opts = {},
}
