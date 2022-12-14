-- local present, lspsaga = pcall(require, "lspsaga")

-- if not present then
--   return
-- end

local notify = require 'notify'

notify.setup({
  timeout = 3000,
  stages = 'fade',
})

vim.notify = function(msg, level, opts)
  require('notify')(msg, level, opts)
end
