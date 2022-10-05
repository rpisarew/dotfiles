local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

autocmd("VimEnter", {
  callback = function()
    vim.cmd "set guifont=FiraCode\\ Nerd\\ Font:h17"
    vim.cmd "let g:neovide_refresh_rate_idle=5"
    vim.cmd "let g:neovide_floating_blur_amount_x=5.0"
    vim.cmd "let g:neovide_floating_blur_amount_y=5.0"
    vim.cmd "let g:neovide_fullscreen=v:true"
    vim.cmd "let g:neovide_cursor_vfx_mode='pixiedust'"
  end,
})

-- autocmd("BufRead,BufNewFile *", {
--   callback = function()
--     vim.cmd "setlocal spell spelllang=en_us"
--   end,
-- })

local opt = vim.opt

opt.colorcolumn = "120"
opt.relativenumber = true

opt.wrap = false
opt.scrolloff = 15
opt.fileencoding = "utf-8"
-- opt.shell = "/bin/bash"

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv "HOME" .. "/.vim/undodir"
opt.undofile = true
opt.fileencoding = "utf-8"
-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
opt.updatetime = 50
opt.timeoutlen = 200

opt.hidden = true -- hide unused buffers
